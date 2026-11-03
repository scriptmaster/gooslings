// c_interop1
// Goose compiles to C and calls C directly. Make me compile!

extern fn hypot(x: f64, y: f64) -> f64;

fn main() {
    let h = hypot(3.0, 4.0);
    assert(h == 5.0);
    print("hypot = ", h);
}
