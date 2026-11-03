// options2
// Make me compile!
import std;

fn main() {
    let xs = [3, 14, 15, 92];
    let big = xs.find() { it > 10 };
    var found = 0;
    if big { found = big; }
    assert(found == 14);
    print("found ", found);
}
