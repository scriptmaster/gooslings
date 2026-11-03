// primitive8
// Make me compile! Euclidean modulo, truncating division and `std`'s `rem`.
import std;

fn main() {
    assert(-7 % 3 == 2);
    assert(7 % -3 == 1);
    assert(-7 / 3 == -2);
    assert(rem(-7, 3) == -1);
    print("modulo ok");
}
