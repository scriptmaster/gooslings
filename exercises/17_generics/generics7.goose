// generics7
// `const for` is the language's reflection: it expands at specialization time.
// Make me compile!
// I AM NOT DONE

fn main() {
    var kinds = 0;
    const for <U> in types<i8, u16, f32> {
        let z: U = default<U>();
        
    }
    assert(kinds == 3);
    print(kinds, " types visited");
}
