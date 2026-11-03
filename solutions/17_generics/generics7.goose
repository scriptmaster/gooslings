// generics7
// `const for` is the language's reflection: it expands at specialization time.
// Make me compile!

fn main() {
    var kinds = 0;
    const for <U> in types<i8, u16, f32> {
        let z: U = default<U>();
        kinds += 1;
    }
    assert(kinds == 3);
    print(kinds, " types visited");
}
