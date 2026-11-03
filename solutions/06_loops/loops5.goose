// loops5
// Make me compile! Double every element in place.

fn main() {
    var xs = [1, 2, 3, 4];
    for &x in xs {
        x *= 2;
    }
    assert(xs[0] == 2 && xs[3] == 8);
    print(xs);
}
