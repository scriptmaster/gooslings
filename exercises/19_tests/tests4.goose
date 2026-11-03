// tests4
// Make me pass! A signed i8 wraps in a release run; use a wider type so the
// sum is right.
// I AM NOT DONE

fn main() {
    let a: i8 = 100;
    let b: i8 = 100;
    let sum = a + b;
    assert(sum == 200);
    print("sum = ", sum);
}
