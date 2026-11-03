// memory5
// A `T&` parameter is a reference: the function writes through it. There is no
// `*` and no `->`; references are transparent.
// Make me compile!
// I AM NOT DONE

fn bump(n: i64) {
    n += 1;
}

fn main() {
    var x = 41;
    bump(x);
    assert(x == 42);
    print("x = ", x);
}
