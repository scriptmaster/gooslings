// primitive2
// Characters are bytes in Goose (a string is a `u8` array). A character
// literal such as 'a' is simply the number 97.
// Make me compile!

fn main() {
    let c: u8 = 'a';
    assert(c == 97);
    let upper = c - 32;
    assert(upper == 'A');
    print("c = ", c, ", upper = ", upper);
}
