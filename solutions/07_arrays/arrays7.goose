// arrays7
// Make me compile! A slice parameter takes a fixed, frozen or grow-only array
// and any sub-range of them without copying.

fn total(xs: i64[:]) -> i64 {
    var t = 0;
    for x in xs { t += x; }
    return t;
}

fn main() {
    let fixed: i64[3] = [1, 2, 3];
    var grow: i64[>..] = [10, 20, 30, 40];
    assert(total(fixed) == 6);
    assert(total(grow) == 100);
    assert(total(grow[1..3]) == 50);
    print("totals ok");
}
