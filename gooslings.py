#!/usr/bin/env python3
"""gooslings: small exercises to get you used to reading and writing Goose code.

A port of the rustlings / ziglings idea to the Goose programming language
(https://github.com/aardappel/goose).

    python3 gooslings.py install      download the goose compiler release for this machine
    python3 gooslings.py list         list the exercises and their progress
    python3 gooslings.py verify       check all exercises in order, stop at the first failure
    python3 gooslings.py watch        verify, then re-verify every time you save a file
    python3 gooslings.py run NAME     run one exercise
    python3 gooslings.py hint NAME    show the hint of an exercise
    python3 gooslings.py reset NAME   restore an exercise with git
    python3 gooslings.py selftest     maintainers: check that every solution passes
                                      and every unsolved exercise does not

Needs Python 3.11 or newer (for tomllib).
"""
import argparse
import hashlib
import os
import platform
import shutil
import subprocess
import sys
import tarfile
import tempfile
import time
import urllib.request
import zipfile
from pathlib import Path

try:
    import tomllib
except ModuleNotFoundError:  # pragma: no cover
    sys.exit("gooslings needs Python 3.11 or newer (tomllib is missing).")

ROOT = Path(__file__).resolve().parent
MARKER = "I AM NOT DONE"
TIMEOUT = 60
NOISE = ("parsed ok:", "typechecked ok:", "bce:")

GOOSE_VERSION = "v2026.3"
RELEASE_URL = "https://github.com/aardappel/goose/releases/download/{ver}/{asset}"
# sha256 of the v2026.3 release assets, as published by GitHub.
ASSETS = {
    "linux-x64": ("goose-v2026.3-linux-x64.tar.gz",
                  "06ac30284338269d3996d457412bf4f2b47c1f9a5601de65b6317187fe78d5c9"),
    "macos-arm64": ("goose-v2026.3-macos-arm64.tar.gz",
                    "2ffaaf46b3edde27aed03fcd9ebe73e9b6639cac30d8a6915f7dc00795b7aedf"),
    "macos-x64": ("goose-v2026.3-macos-x64.tar.gz",
                  "3c7f2895f3dcab5f39ee52808446b00688b975620d1d27e23694dd22b82abfe7"),
    "windows-x64": ("goose-v2026.3-windows-x64.zip",
                    "e30cfa398c0362cef4b8f311cf5496743920b6d3a6c4a6d818fc47ee1e56be7d"),
}
HOME = Path(os.environ.get("GOOSLINGS_HOME", Path.home() / ".gooslings"))


# ---------------------------------------------------------------- helpers
def color(code, text):
    if sys.stdout.isatty() and os.environ.get("NO_COLOR") is None:
        return f"\033[{code}m{text}\033[0m"
    return text


def green(t): return color("32", t)
def red(t): return color("31", t)
def yellow(t): return color("33", t)
def bold(t): return color("1", t)


def load_exercises():
    with open(ROOT / "info.toml", "rb") as f:
        data = tomllib.load(f)
    exs = data["exercises"]
    for e in exs:
        e["path"] = ROOT / "exercises" / e["dir"] / (e["name"] + ".goose")
        e["solution"] = ROOT / "solutions" / e["dir"] / (e["name"] + ".goose")
    return exs


def find_exercise(exs, name):
    name = name.removesuffix(".goose")
    for e in exs:
        if e["name"] == name or Path(name).name == e["name"] + ".goose":
            return e
    sys.exit(red(f"unknown exercise '{name}'. Try `python3 gooslings.py list`."))


def platform_key():
    system, machine = platform.system(), platform.machine().lower()
    arm = machine in ("arm64", "aarch64")
    if system == "Linux" and not arm:
        return "linux-x64"
    if system == "Darwin":
        return "macos-arm64" if arm else "macos-x64"
    if system == "Windows" and not arm:
        return "windows-x64"
    sys.exit(f"no prebuilt goose release for {system}/{machine}; build it from "
             "https://github.com/aardappel/goose and put `goose` on your PATH.")


def exe_name():
    return "goose.exe" if os.name == "nt" else "goose"


def find_goose():
    env = os.environ.get("GOOSE")
    if env and Path(env).exists():
        return env
    on_path = shutil.which("goose")
    if on_path:
        return on_path
    for d in sorted(HOME.glob("goose-*"), reverse=True):
        for cand in (d / exe_name(), *d.glob("*/" + exe_name())):
            if cand.exists():
                return str(cand)
    sys.exit(red("The goose compiler was not found.\n") +
             "Run `python3 gooslings.py install`, or put `goose` on your PATH "
             "(or set the GOOSE environment variable).\n"
             "Releases: https://github.com/aardappel/goose/releases")


def is_done_marker_present(path):
    return MARKER in path.read_text(encoding="utf-8")


def goose_run(goose, path, mode, timeout=TIMEOUT):
    """Compile and run one file. Returns (ok, output)."""
    env = dict(os.environ, GOOSE_PROGRESS="plain")
    try:
        if mode == "build":
            with tempfile.TemporaryDirectory() as tmp:
                src = Path(tmp) / path.name
                shutil.copy(path, src)
                b = subprocess.run([goose, "build", str(src)], capture_output=True,
                                   text=True, timeout=timeout * 4, env=env)
                if b.returncode != 0:
                    return False, (b.stdout + b.stderr)
                exe = src.with_suffix(".exe" if os.name == "nt" else "")
                r = subprocess.run([str(exe)], capture_output=True, text=True,
                                   timeout=timeout, env=env)
                return r.returncode == 0, r.stdout + r.stderr
        r = subprocess.run([goose, "run", str(path)], capture_output=True, text=True,
                           timeout=timeout, env=env)
    except subprocess.TimeoutExpired:
        return False, f"timed out after {timeout}s (is there a loop that never ends?)"
    out = r.stdout + "".join(
        l + "\n" for l in r.stderr.splitlines() if not l.startswith(NOISE))
    return r.returncode == 0, out


def check(goose, e):
    """Return (state, output); state in done / marker / failed / skipped."""
    if e["mode"] == "skip":
        return "skipped", ""
    ok, out = goose_run(goose, e["path"], e["mode"])
    if not ok:
        return "failed", out
    if is_done_marker_present(e["path"]):
        return "marker", out
    return "done", out


def rel(p):
    return os.path.relpath(p, Path.cwd())


# --------------------------------------------------------------- commands
def cmd_install(args):
    key = platform_key()
    asset, sha = ASSETS[key]
    if args.goose_version != GOOSE_VERSION:
        asset = asset.replace(GOOSE_VERSION, args.goose_version)
        sha = None
    url = RELEASE_URL.format(ver=args.goose_version, asset=asset)
    HOME.mkdir(parents=True, exist_ok=True)
    print(f"Downloading {url}")
    archive = HOME / asset
    urllib.request.urlretrieve(url, archive)
    if sha is not None:
        got = hashlib.sha256(archive.read_bytes()).hexdigest()
        if got != sha:
            archive.unlink()
            sys.exit(red(f"checksum mismatch for {asset}: expected {sha}, got {got}"))
        print("sha256 verified.")
    dest = HOME / f"goose-{args.goose_version}"
    dest.mkdir(parents=True, exist_ok=True)
    if asset.endswith(".zip"):
        with zipfile.ZipFile(archive) as z:
            z.extractall(dest)
    else:
        with tarfile.open(archive) as t:
            t.extractall(dest)
    archive.unlink()
    exe = next(dest.rglob(exe_name()))
    exe.chmod(exe.stat().st_mode | 0o111)
    print(green(f"Installed goose to {exe.parent}"))
    print(f"gooslings finds it there by itself. To use it everywhere, add this to your PATH:\n  {exe.parent}")


def cmd_list(args):
    exs = load_exercises()
    goose = None if args.no_check else find_goose()
    done = total = 0
    for e in exs:
        if e["mode"] == "skip":
            state = yellow("n/a    ")
        elif goose:
            s, _ = check(goose, e)
            state = {"done": green("done   "), "marker": yellow("marker "),
                     "failed": red("pending")}[s]
            done += s == "done"
            total += 1
        else:
            state = "       "
        print(f"{state} {e['dir']}/{e['name']}")
    if goose:
        print(f"\n{done}/{total} applicable exercises done "
              f"({len(exs) - total} marked NOT APPLICABLE).")


def report_fail(e, state, out):
    print(red(f"✗ {e['dir']}/{e['name']}") + "  " + rel(e["path"]))
    if state == "marker":
        print(yellow("This exercise compiles and passes, but it still contains the "
                     f"`{MARKER}` line.\nRead it, then delete that line to move on."))
    else:
        print(out.rstrip())
    print(f"\nEdit {rel(e['path'])}, then re-run. Stuck? "
          f"`python3 gooslings.py hint {e['name']}`")


def cmd_run(args):
    exs = load_exercises()
    e = find_exercise(exs, args.name)
    if e["mode"] == "skip":
        print(yellow(f"{e['name']} is NOT APPLICABLE to Goose. Read why in {rel(e['path'])}:\n"))
        print(e["path"].read_text(encoding="utf-8"))
        return
    goose = find_goose()
    ok, out = goose_run(goose, e["path"], e["mode"])
    if out.strip():
        print(out.rstrip())
    if not ok:
        report_fail(e, "failed", "")
        sys.exit(1)
    if is_done_marker_present(e["path"]):
        report_fail(e, "marker", out)
        sys.exit(1)
    print(green(f"✓ {e['name']} passed"))


def first_pending(goose, exs):
    for i, e in enumerate(exs):
        state, out = check(goose, e)
        if state in ("failed", "marker"):
            return i, e, state, out
    return None


def cmd_verify(args):
    exs = load_exercises()
    goose = find_goose()
    for i, e in enumerate(exs):
        state, out = check(goose, e)
        if state == "done":
            print(green(f"✓ {e['name']}"))
        elif state == "skipped":
            print(yellow(f"- {e['name']} (not applicable to Goose)"))
        else:
            report_fail(e, state, out)
            sys.exit(1)
    print(green("\nAll exercises are done. Congratulations, you are a gooseling no more!"))


def cmd_watch(args):
    exs = load_exercises()
    goose = find_goose()
    last = None
    print("Watching. Edit the exercise, save, and the result appears here. Ctrl-C quits.")
    try:
        while True:
            stamp = tuple(p.stat().st_mtime for p in
                          (e["path"] for e in exs))
            if stamp != last:
                last = stamp
                os.system("cls" if os.name == "nt" else "clear")
                pending = first_pending(goose, exs)
                if pending is None:
                    print(green("All exercises are done. Congratulations!"))
                    return
                i, e, state, out = pending
                print(bold(f"[{i + 1}/{len(exs)}]"), end=" ")
                report_fail(e, state, out)
            time.sleep(0.5)
    except KeyboardInterrupt:
        print()


def cmd_hint(args):
    e = find_exercise(load_exercises(), args.name)
    print(e["hint"].strip())


def cmd_reset(args):
    e = find_exercise(load_exercises(), args.name)
    r = subprocess.run(["git", "checkout", "--", str(e["path"])], cwd=ROOT)
    sys.exit(r.returncode)


def cmd_solution(args):
    e = find_exercise(load_exercises(), args.name)
    print(e["solution"].read_text(encoding="utf-8"))


def cmd_selftest(args):
    """Every solution must pass; every unsolved, applicable exercise must not."""
    exs = load_exercises()
    goose = find_goose()
    bad = 0
    for e in exs:
        if e["mode"] == "skip":
            if "NOT APPLICABLE" not in e["path"].read_text(encoding="utf-8"):
                print(red(f"{e['name']}: skipped exercise must say NOT APPLICABLE"))
                bad += 1
            continue
        if not e["solution"].exists():
            print(red(f"{e['name']}: no solution file"))
            bad += 1
            continue
        if is_done_marker_present(e["solution"]) or not is_done_marker_present(e["path"]):
            print(red(f"{e['name']}: marker must be in the exercise only"))
            bad += 1
        ok, out = goose_run(goose, e["solution"], e["mode"])
        if not ok:
            print(red(f"{e['name']}: SOLUTION FAILS\n{out}"))
            bad += 1
        if e["mode"] == "run" and e["name"] != "intro1":
            ok, _ = goose_run(goose, e["path"], e["mode"], timeout=10)
            if ok:
                print(red(f"{e['name']}: unsolved exercise passes"))
                bad += 1
    print(red(f"{bad} problem(s)") if bad else green(f"selftest ok: {len(exs)} exercises"))
    sys.exit(1 if bad else 0)


def main():
    ap = argparse.ArgumentParser(prog="gooslings", description=__doc__.split("\n")[0])
    sub = ap.add_subparsers(dest="cmd", required=True)
    p = sub.add_parser("install", help="download the goose compiler for this machine")
    p.add_argument("--goose-version", default=GOOSE_VERSION)
    p.set_defaults(fn=cmd_install)
    p = sub.add_parser("list", help="list the exercises")
    p.add_argument("--no-check", action="store_true", help="do not compile anything")
    p.set_defaults(fn=cmd_list)
    for n, f, h in (("run", cmd_run, "run one exercise"), ("hint", cmd_hint, "show a hint"),
                    ("reset", cmd_reset, "undo your edits with git"),
                    ("solution", cmd_solution, "print the reference solution")):
        p = sub.add_parser(n, help=h)
        p.add_argument("name")
        p.set_defaults(fn=f)
    sub.add_parser("verify", help="check all exercises").set_defaults(fn=cmd_verify)
    sub.add_parser("watch", help="re-check when files change").set_defaults(fn=cmd_watch)
    sub.add_parser("selftest", help="maintainers: check solutions").set_defaults(fn=cmd_selftest)
    args = ap.parse_args()
    args.fn(args)


if __name__ == "__main__":
    main()
