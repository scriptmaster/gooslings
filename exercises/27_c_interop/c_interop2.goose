// c_interop2
// Make me compile! Bind a C function under a different Goose name.
// I AM NOT DONE

extern fn cube_root(x: f64) -> f64;

fn main() {
    let r = cube_root(27.0);
    assert(r > 2.999 && r < 3.001);
    print("cbrt(27) = ", r);
}
