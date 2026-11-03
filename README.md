# Gooslings

Small exercises to get you used to reading and writing
[Goose](https://github.com/aardappel/goose) code, in the spirit of
[rustlings](https://github.com/rust-lang/rustlings) and
[ziglings](https://codeberg.org/ziglings/exercises). Each exercise is a broken
`.goose` program (a compile error or a failing `assert`); fix it, remove the
`// I AM NOT DONE` line, and move on.

186 exercises across 40 topics; every solution and every unsolved exercise is
checked against the real compiler in CI (`python3 gooslings.py selftest`).

## Get the Goose compiler (release v2026.3)

Direct downloads from <https://github.com/aardappel/goose/releases/tag/v2026.3>
(all releases: <https://github.com/aardappel/goose/releases>):

| Platform | Download | sha256 |
|---|---|---|
| Linux x64 | [goose-v2026.3-linux-x64.tar.gz](https://github.com/aardappel/goose/releases/download/v2026.3/goose-v2026.3-linux-x64.tar.gz) | `06ac30284338269d3996d457412bf4f2b47c1f9a5601de65b6317187fe78d5c9` |
| macOS arm64 (Apple Silicon) | [goose-v2026.3-macos-arm64.tar.gz](https://github.com/aardappel/goose/releases/download/v2026.3/goose-v2026.3-macos-arm64.tar.gz) | `2ffaaf46b3edde27aed03fcd9ebe73e9b6639cac30d8a6915f7dc00795b7aedf` |
| macOS x64 (Intel) | [goose-v2026.3-macos-x64.tar.gz](https://github.com/aardappel/goose/releases/download/v2026.3/goose-v2026.3-macos-x64.tar.gz) | `3c7f2895f3dcab5f39ee52808446b00688b975620d1d27e23694dd22b82abfe7` |
| Windows x64 | [goose-v2026.3-windows-x64.zip](https://github.com/aardappel/goose/releases/download/v2026.3/goose-v2026.3-windows-x64.zip) | `e30cfa398c0362cef4b8f311cf5496743920b6d3a6c4a6d818fc47ee1e56be7d` |

Or let gooslings do it (downloads the right one for your machine, verifies the
checksum, unpacks to `~/.gooslings/`):

```
python3 gooslings.py install
```

Python 3.11+ is required for the runner. A goose already on your `PATH` (or
`$GOOSE`) is used first. The `threads` exercises use `goose build`, which needs
a C compiler (gcc/clang).

## Usage

```
python3 gooslings.py list            # all exercises and progress
python3 gooslings.py verify          # check in order, stop at the first failure
python3 gooslings.py watch           # re-verify on every save
python3 gooslings.py run NAME        # run one exercise, e.g. run variables1
python3 gooslings.py hint NAME
python3 gooslings.py reset NAME      # git checkout the exercise
python3 gooslings.py solution NAME   # peek at the reference solution
```

## Layout

```
gooslings.py        runner (install / list / run / verify / watch / hint / reset / solution / selftest)
info.toml           ordered exercise list: name, dir, mode (run | build | skip), hint
exercises/NN_<topic>/  the exercises you edit (like rustlings' exercises/)
solutions/NN_<topic>/ reference solutions (like rustlings' solutions/)
```

## Topics and how they map to rustlings / ziglings

intro, variables, functions, if, quiz, primitive_types, loops, arrays, memory,
structs, enums, strings, modules, hashmaps, options, error_handling, generics,
polymorphism, tests, lifetimes, iterators, references, serialization, threads,
conversions, bits, c_interop.

Some Rust/Zig topics have no Goose equivalent (traits, Box/Rc/Arc/Cow, macros,
async, allocators, defer, raw pointers, ...). They are kept as placeholder files
marked **NOT APPLICABLE**, with the reason and the nearest Goose exercise in the
`.goose` file comments, so the numbering stays comparable. These are skipped by `verify`.

## License

Goose is Apache-2.0 licensed and is not bundled here.
