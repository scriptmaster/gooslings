// primitive9
// Make me compile! Integers become floats implicitly, and a float becomes an
// integer only through `as`.
// I AM NOT DONE

fn main() {
    let n: i64 = 3;
    let x: f64 = 0.5;
    let product = n * x;
    let back: i64 = product;
    assert(back == 1);
    print(product, " ", back);
}
