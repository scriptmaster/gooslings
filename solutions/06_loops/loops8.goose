// loops8
// Make me compile! Visit every possible byte value exactly once.

fn main() {
    var count = 0;
    var sum: i64 = 0;
    for i: u8 in 0..256 {
        count += 1;
        sum += i;
    }
    assert(count == 256);
    assert(sum == 32640);
    print("visited ", count, " bytes");
}
