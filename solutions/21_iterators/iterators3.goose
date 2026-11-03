// iterators3
// Make me compile! Multiply every element together.
import std;

fn main() {
    let xs = [1, 2, 3, 4];
    let product = fold(xs, 1) { acc, x => acc * x };
    assert(product == 24);
    print("product ", product);
}
