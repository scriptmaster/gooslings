// strings9
// Make me compile! Count the lines of a text without building an array.
import std;

fn main() {
    let text = "one\ntwo\nthree";
    var n = 0;
    each_split(text, '\n') { n += 1; };
    assert(n == 3);
    print("lines: ", n);
}
