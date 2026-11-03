// loops2
// Make me compile! Halve the number until it is smaller than 1.

fn main() {
    var n = 100;
    var steps = 0;
    while n >= 1 {
        n /= 2;
        steps += 1;
    }
    assert(steps == 7);
    print("steps = ", steps);
}
