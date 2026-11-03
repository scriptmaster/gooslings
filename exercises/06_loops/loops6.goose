// loops6
// Make me compile! Count only the odd numbers below 10.
// I AM NOT DONE

fn main() {
    var odds = 0;
    for i in 10 {
        if i % 2 == 0 {  }
        odds += 1;
    }
    assert(odds == 5);
    print("odds = ", odds);
}
