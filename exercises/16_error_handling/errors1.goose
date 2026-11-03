// errors1
// Make me compile! Return the validity flag too.
// I AM NOT DONE

fn parse_age(s: u8[:]) -> i64, bool {
    var n = 0;
    if s.len == 0 { return 0, false; }
    for c in s {
        if c < '0' || c > '9' { return 0, false; }
        n = n * 10 + (c - '0');
    }
    return n, ;
}

fn main() {
    let a, ok = parse_age("36");
    assert(ok && a == 36);
    let b, ok2 = parse_age("3x");
    assert(!ok2);
    print(a, " ", b);
}
