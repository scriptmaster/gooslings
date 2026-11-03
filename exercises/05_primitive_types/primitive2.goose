// primitive2
// Characters are bytes in Goose (a string is a `u8` array). A character
// literal such as 'a' is simply the number 97.
// Make me compile!
// I AM NOT DONE

fn main() {
    let c: u8 = 'a';
    assert(c == 0);
    let upper = c - 32;
    assert(upper == 'a');
    print("c = ", c, ", upper = ", upper);
}
