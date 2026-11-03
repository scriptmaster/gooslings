// arrays6
// Make me compile!
// I AM NOT DONE
import std;

fn main() {
    var xs = [1, 2, 3, 4];
    reverse(xs);
    assert(xs[0] == 4);
    assert(xs.has(3));
    assert(xs.position(1) == 3);
    assert(xs.position(99) == -1);
    print(xs);
}
