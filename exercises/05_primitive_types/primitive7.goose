// primitive7
// `255 as u8 + 1` is 0: unsigned arithmetic wraps in every build. Widen the
// operand with `as` when you want the true sum.
// Make me compile!
// I AM NOT DONE

fn main() {
    let a: u8 = 250;
    let b: u8 = 10;
    let wrapped = a + b;
    assert(wrapped == 4);
    let wide = a + b;
    assert(wide == 260);
    print(wrapped, " ", wide);
}
