// structs6
// Make me compile! Make `Pair` generic so it works for ints and floats.

struct Pair<T> { a: T, b: T }

fn main() {
    let ints = Pair<i64> { 1, 2 };
    let floats = Pair<f64> { 1.5, 2.5 };
    assert(ints.b == 2);
    assert(floats.a == 1.5);
    print(ints, " ", floats);
}
