// loops1
// Make me compile! Add up the numbers 1 to 10 inclusive.

fn main() {
    var sum = 0;
    for i in 1..11 {
        sum += i;
    }
    assert(sum == 55);
    print("sum = ", sum);
}
