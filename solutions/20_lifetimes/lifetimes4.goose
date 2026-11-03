// lifetimes4
// The checker proves that `clear` cannot leave a dangling reference. Make me
// compile by finishing with the reference before the array shrinks.

fn main() {
    var xs: i64[>..] = [1, 2, 3];
    let first .= xs[0];
    print("first is ", first);
    xs.clear();
    assert(xs.len == 0);
}
