// errors6
// Some failures should not be reported but stop the program. This exercise
// is solved when it STOPS NOTHING: make every invariant hold.

fn average(xs: i64[:]) -> i64 {
    assert(xs.len > 0);
    var t = 0;
    for x in xs { t += x; }
    return t / xs.len;
}

fn main() {
    let xs: i64[>..] = [2, 4, 6];
    print("average ", average(xs));
    assert(average(xs) == 4);
}
