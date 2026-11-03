// conversions5
// Make me compile!
// I AM NOT DONE
import std;

fn main() {
    let f, ok = parse_flt("2.5e2");
    assert(ok);
    assert(f == 2.5);
    let _, bad = parse_flt("two");
    assert(!bad);
    print("parsed ", f);
}
