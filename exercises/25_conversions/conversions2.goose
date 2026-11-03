// conversions2
// Mixed signedness is never promoted silently. Make me compile!
// I AM NOT DONE

fn main() {
    let a: u32 = 7;
    let b: i32 = 3;
    let sum = a + b;
    assert(sum == 10);
    print(sum);
}
