// variables7
// `let` forbids re-assigning the name, but the contents of an array can still
// be written. `const` forbids both.
// Make me compile!

fn main() {
    let xs = [1, 2, 3];
    xs[0] = 10;
    let ys = [1, 2, 3];
    ys[0] = 10;
    assert(xs[0] == 10 && ys[0] == 10);
}
