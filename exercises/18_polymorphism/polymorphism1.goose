// polymorphism1
// Rust traits and Zig's duck typing map to overloading and generics in Goose.
// Make me compile! Each type gets its own `name` overload.
// I AM NOT DONE

struct Dog { age: i64 }
struct Cat { lives: i64 }

fn name(d: Dog) -> u8[:] { "dog" }


fn main() {
    assert(Dog { 3 }.name() == "dog");
    assert(Cat { 9 }.name() == "cat");
    print("names ok");
}
