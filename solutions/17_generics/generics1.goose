// generics1
// Make me compile! `x + x` should work for any type that can be added.

fn twice(x) { x + x }

fn main() {
    assert(twice(21) == 42);
    assert(twice(1.5) == 3.0);
    print(twice(2), " ", twice(0.25));
}
