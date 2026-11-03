// conversions2
// Mixed signedness is never promoted silently. Make me compile!

fn main() {
    let a: u32 = 7;
    let b: i32 = 3;
    let sum = a as i64 + b as i64;
    assert(sum == 10);
    print(sum);
}
