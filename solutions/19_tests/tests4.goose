// tests4
// Make me pass! A signed i8 wraps in a release run; use a wider type so the
// sum is right.

fn main() {
    let a: i32 = 100;
    let b: i32 = 100;
    let sum = a + b;
    assert(sum == 200);
    print("sum = ", sum);
}
