// iterators3
// Make me compile! Multiply every element together.
// I AM NOT DONE
import std;

fn main() {
    let xs = [1, 2, 3, 4];
    let product = fold(xs, 0) { acc, x => acc * x };
    assert(product == 24);
    print("product ", product);
}
