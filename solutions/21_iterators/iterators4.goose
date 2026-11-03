// iterators4
// Make me compile!
import std;

fn main() {
    let xs = [5, 8, 13, 21, 34];
    let big = xs.find() { it > 10 };
    assert(big);
    assert(big == 13);
    assert(xs.find_index() { it > 10 } == 2);
    assert(xs.any() { it == 21 });
    assert(xs.all() { it > 0 });
    assert(xs.count() { it % 2 == 1 } == 3);
    print("search ok");
}
