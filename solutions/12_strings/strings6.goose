// strings6
// Make me compile! Format a number in hexadecimal with padding.
import std;

fn main() {
    var s: u8[>..] = [];
    format_int(s, 255, 16, 4, '0');
    assert(s == "00ff");
    to_upper(s);
    assert(s == "00FF");
    print(s);
}
