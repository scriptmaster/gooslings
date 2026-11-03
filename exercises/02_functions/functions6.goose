// functions6
// Several results are a calling convention, not a tuple. By custom the last
// `bool` says whether the rest means anything.
// Make me compile!
// I AM NOT DONE

fn divide(a: i64, b: i64) -> i64, bool {
    if b == 0 { return 0, false; }
    return a / b;
}

fn main() {
    let q, ok = divide(7, 2);
    assert(ok && q == 3);
    let z, ok2 = divide(1, 0);
    assert(!ok2 && z == 0);
    print("q = ", q, ", ok = ", ok);
}
