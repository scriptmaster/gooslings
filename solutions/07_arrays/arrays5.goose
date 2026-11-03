// arrays5
// Make me compile! Sort the numbers in descending order.
import std;

fn main() {
    var xs = [3, 9, 1, 7];
    sort(xs) { a, b => a > b };
    assert(xs[0] == 9 && xs[3] == 1);
    print(xs);
}
