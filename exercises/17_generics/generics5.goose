// generics5
// Make me compile! Add the missing overload for floats.
// I AM NOT DONE

fn describe(x: i64) -> u8[>..] { str("int ", x) }

fn describe(xs: i64[:]) -> u8[>..] { str(xs.len, " ints, first ", xs[0]) }

fn main() {
    let xs = [4, 5, 6];
    assert(describe(7) == "int 7");
    assert(describe(2.5) == "float 2.5");
    assert(xs.describe() == "3 ints, first 4");
    print("describe ok");
}
