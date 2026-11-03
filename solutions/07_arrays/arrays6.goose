// arrays6
// Make me compile!
import std;

fn main() {
    var xs = [1, 2, 3, 4];
    reverse(xs);
    assert(xs[0] == 4);
    assert(xs.contains(3));
    assert(xs.position(1) == 3);
    assert(xs.position(99) == -1);
    print(xs);
}
