// strings4
// Make me compile! `split` copies no text: its parts are views of the input.
import std;

fn main() {
    let parts = split("alice,30,paris", ',');
    assert(parts.len == 3);
    assert(parts[1] == "30");
    let cmd = words("  go   north ");
    assert(cmd.len == 2);
    assert(cmd[0] == "go");
    print(parts, " ", cmd);
}
