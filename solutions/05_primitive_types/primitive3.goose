// primitive3
// Fixed-size arrays, `T[k]`, know their size at compile time and have no
// metadata. The fill form `[v; n]` repeats a value.
// Make me compile!

fn main() {
    let a: i32[100] = [1; 100];

    if a.len >= 100 {
        print("Wow, that's a big array!");
    } else {
        print("Meh, I eat arrays like that for breakfast.");
        assert(false);
    }
}
