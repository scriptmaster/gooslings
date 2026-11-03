// conversions1
// Make me compile!

fn main() {
    let small: u8 = 200;
    let wide: i64 = small;
    let back: u8 = wide as u8;
    assert(wide == 200 && back == 200);
    print(small, " ", wide, " ", back);
}
