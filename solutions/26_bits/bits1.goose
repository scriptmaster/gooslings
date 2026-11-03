// bits1
// Make me compile! Bit counting from std.
import std;

fn main() {
    assert(popcount(255) == 8);
    assert(ctz(8) == 3);
    assert(clz(1) == 63);
    print("bit counts ok");
}
