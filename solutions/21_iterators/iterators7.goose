// iterators7
// Make me compile! Dot product of two arrays using the index form of `for`.

fn main() {
    let a = [1, 2, 3];
    let b = [4, 5, 6];
    var dot = 0;
    for x, i in a { dot += x * b[i]; }
    assert(dot == 32);
    print("dot = ", dot);
}
