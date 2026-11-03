// variables6
// Constants live at the top level of the file. A named constant without a
// written type adapts to any integer type its value fits.
// Make me compile!
// I AM NOT DONE

let NUMBER;

fn main() {
    let small: u8 = NUMBER;
    let big: i64 = NUMBER * 1000000;
    print("Number ", NUMBER, " ", small, " ", big);
    assert(big == 3000000);
}
