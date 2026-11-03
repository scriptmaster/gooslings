// primitive10
// Narrowing never happens by itself. Use `as!` to truncate on purpose.
// Make me compile!
// I AM NOT DONE

fn main() {
    let big: i64 = 300;
    let small: u8 = big;
    assert(small == 44);
    print(big, " as u8 is ", small);
}
