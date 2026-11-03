// functions5
// Make me compile!

fn main() {
    let answer = square(3);
    print("The square of 3 is ", answer);
    assert(answer == 9);
}

fn square(num: i64) -> i64 {
    num * num
}
