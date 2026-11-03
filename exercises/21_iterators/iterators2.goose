// iterators2
// Make me compile! Keep only the even numbers.
// I AM NOT DONE
import std;

fn main() {
    let xs = [1, 2, 3, 4, 5, 6];
    let evens = xs.filter() { it % 2 == 1 };
    assert(evens == [2, 4, 6]);
    print(evens);
}
