// strings10
// Goose strings are bytes; UTF-8 is a library concern. A "length" in bytes and
// in code points differ. Make me compile!
import std;

fn main() {
    let s = "héllo";
    assert(s.len == 6);
    var cps = 0;
    each_utf8(s) { cps += 1; };
    assert(cps == 5);
    var out: u8[>..] = [];
    push_utf8(out, 0x263A);
    assert(out.len == 3);
    print(s, " has ", cps, " code points in ", s.len, " bytes ", out);
}
