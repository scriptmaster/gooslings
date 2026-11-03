// iterators1
// Make me compile! Square every element.
import std;

fn main() {
    let xs = [1, 2, 3, 4];
    let squares = xs.map() { it * it };
    assert(squares == [1, 4, 9, 16]);
    print(squares);
}
