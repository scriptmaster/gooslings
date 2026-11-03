// conversions3
// Make me compile!

fn main() {
    let f: f64 = 3.99;
    let i: i64 = f as i64;
    assert(i == 3);
    let half = 7 as f64 / 2.0;
    assert(half == 3.5);
    print(i, " ", half);
}
