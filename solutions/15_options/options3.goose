// options3
// Make me compile! `guard` states what the rest of the block depends on.
import std;

fn double_first_big(xs: i64[:]) -> i64 {
    let big = xs.find() { it > 10 };
    guard big else { return 0; }
    return big * 2;
}

fn main() {
    assert(double_first_big([1, 2, 30]) == 60);
    assert(double_first_big([1, 2, 3]) == 0);
    print("guard ok");
}
