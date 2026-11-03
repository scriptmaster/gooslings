// iterators8
// A hand-written iterator has the same structuring power as `for`. Make me
// compile! Return the first multiple of 7.

fn each_step<F>(lo: i64, hi: i64, step: i64) {
    var i = lo;
    while i < hi { F(i); i += step; }
}

fn first_multiple_of_7(lo: i64, hi: i64) -> i64 {
    each_step(lo, hi, 3) { if it % 7 == 0 { return it; } };
    return -1;
}

fn main() {
    assert(first_multiple_of_7(10, 40) == 28);
    assert(first_multiple_of_7(1, 3) == -1);
    print("iterators ok");
}
