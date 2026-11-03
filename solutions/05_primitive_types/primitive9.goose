// primitive9
// Make me compile! Integers become floats implicitly, and a float becomes an
// integer only through `as`.

fn main() {
    let n: i64 = 3;
    let x: f64 = 0.5;
    let product = n * x;
    let back: i64 = product as i64;
    assert(back == 1);
    print(product, " ", back);
}
