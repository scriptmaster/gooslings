// polymorphism2
// Static dispatch through generics: `T` only needs the functions the body calls.
// Make me compile!
// I AM NOT DONE

struct Dog { age: i64 }
struct Cat { lives: i64 }

fn name(d: Dog) -> u8[:] { "dog" }
fn name(c: Cat) -> u8[:] { "cat" }

fn introduce<T>(a: Dog) -> u8[>..] { str("I am a ", a.name()) }

fn main() {
    assert(introduce(Dog { 3 }) == "I am a dog");
    assert(introduce(Cat { 9 }) == "I am a cat");
    print(introduce(Cat { 1 }));
}
