// strings7
// Make me compile! Join words back together.
import std;

fn main() {
    let parts = words("the quick brown fox");
    var out: u8[>..] = [];
    join(out, parts, "-");
    assert(out == "the-quick-brown-fox");
    print(out);
}
