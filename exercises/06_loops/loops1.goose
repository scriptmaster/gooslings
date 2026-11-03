// loops1
// Make me compile! Add up the numbers 1 to 10 inclusive.
// I AM NOT DONE

fn main() {
    var sum = 0;
    for i in 1..10 {
        sum += i;
    }
    assert(sum == 55);
    print("sum = ", sum);
}
