// references1
// Rust's `&mut` is a plain `T&` in Goose: transparent, with no `*` and no `->`.
// Make me compile!

fn swap_values(a: i64&, b: i64&) {
    let t = a;
    a = b;
    b = t;
}

fn main() {
    var x = 1;
    var y = 2;
    swap_values(x, y);
    assert(x == 2 && y == 1);
    print(x, " ", y);
}
