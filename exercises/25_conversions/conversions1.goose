// conversions1
// Make me compile!
// I AM NOT DONE

fn main() {
    let small: u8 = 200;
    let wide: i64 = small;
    let back: u8 = wide;
    assert(wide == 200 && back == 200);
    print(small, " ", wide, " ", back);
}
