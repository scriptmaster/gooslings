// tests1
// Goose has no built-in test harness: an assertion is a program that exits
// with a non-zero status when it fails, which is exactly how gooslings
// judges exercises. Make me pass!

fn is_even(n: i64) -> bool { n % 2 == 0 }

fn main() {
    assert(is_even(2));
    assert(!is_even(3));
    print("tests1 ok");
}
