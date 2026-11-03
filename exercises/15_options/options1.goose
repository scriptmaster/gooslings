// options1
// Make me compile! Return `null` when there is no such element.
// I AM NOT DONE

fn first_at_least(xs: i64[:], min: i64) -> i64? {
    for &x in xs { if x >= min { return x; } }
    return -1;
}

fn main() {
    let xs: i64[4] = [1, 5, 8, 2];
    let big = first_at_least(xs, 5);
    assert(big);
    assert(big == 5);
    let none = first_at_least(xs, 100);
    assert(none == null);
    print("options ok");
}
