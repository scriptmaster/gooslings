// lifetimes4
// The checker proves that `clear` cannot leave a dangling reference. Make me
// compile by finishing with the reference before the array shrinks.
// I AM NOT DONE

fn main() {
    var xs: i64[>..] = [1, 2, 3];
    let first .= xs[0];
    xs.clear();
    print("first is ", first);
    assert(xs.len == 0);
}
