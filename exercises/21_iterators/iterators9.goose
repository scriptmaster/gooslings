// iterators9
// Make me compile! Implement `count_if`.
// I AM NOT DONE

fn count_if<T, F>(xs: T[:]) -> i64 {
    var n = 0;
    for x in xs { if true { n += 1; } }
    return n;
}

fn main() {
    let xs = [1, 2, 3, 4, 5, 6];
    assert(count_if(xs) { it > 3 } == 3);
    assert(count_if(xs) { it % 2 == 0 } == 3);
    print("count_if ok");
}
