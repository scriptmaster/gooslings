// c_interop1
// Goose compiles to C and calls C directly. Make me compile!
// I AM NOT DONE

extern fn hypot(x: f64, y: f64) -> f64;

fn main() {
    let h = hypotenuse(3.0, 4.0);
    assert(h == 5.0);
    print("hypot = ", h);
}
