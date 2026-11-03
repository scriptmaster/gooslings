// strings5
// Make me compile! `parse_int` follows the trailing-bool convention.
import std;

fn main() {
    let n, ok = parse_int("1234");
    assert(ok && n == 1234);
    let bad, bad_ok = parse_int("12x4");
    assert(!bad_ok);
    let hex, hex_ok = parse_int("ff", 16);
    assert(hex_ok && hex == 255);
    print(n, " ", hex);
}
