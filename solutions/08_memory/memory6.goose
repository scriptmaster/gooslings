// memory6
// Writability is inferred. A string literal is read-only (`const u8[:]`) so you
// cannot hand it to something that writes. Copy it into a builder first.
// Make me compile!
import std;

fn main() {
    var s: u8[>..] = [];
    s.append("hello");
    to_upper(s);
    assert(s == "HELLO");
    print(s);
}
