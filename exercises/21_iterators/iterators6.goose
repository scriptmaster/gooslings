// iterators6
// Make me compile! Count how many chunks of 3 an array of 10 makes.
// I AM NOT DONE
import std;

fn main() {
    let xs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    var chunks = 0;
    each_chunk(xs, 10) { c, i => chunks += 1; };
    assert(chunks == 4);
    print(chunks, " chunks");
}
