// conversions4
// Round trip a number through binary text. Make me compile!
import std;

fn main() {
    var s: u8[>..] = [];
    format_int(s, 42, 2, 0, ' ');
    assert(s == "101010");
    let back, ok = parse_int(s, 2);
    assert(ok && back == 42);
    print(s, " -> ", back);
}
