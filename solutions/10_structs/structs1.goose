// structs1
// Make me compile! Define a struct for a colour.

struct Color { red: u8, green: u8, blue: u8 }

fn main() {
    let green = Color { 0, 255, 0 };
    let named = Color { red: 255, green: 0, blue: 0 };
    assert(green.green == 255);
    assert(named.red == 255);
    print(green, " ", named);
}
