// if1
// Make me compile! Return the bigger of the two numbers.

fn bigger(a: i64, b: i64) -> i64 {
    if a > b { a } else { b }
}

fn main() {
    assert(bigger(10, 8) == 10);
    assert(bigger(32, 42) == 42);
    assert(bigger(42, 42) == 42);
    print("bigger ok");
}
