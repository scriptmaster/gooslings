// loops6
// Make me compile! Count only the odd numbers below 10.

fn main() {
    var odds = 0;
    for i in 10 {
        if i % 2 == 0 { continue; }
        odds += 1;
    }
    assert(odds == 5);
    print("odds = ", odds);
}
