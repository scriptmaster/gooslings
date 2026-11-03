// functions9
// Functions may be overloaded. Give the second `describe` a parameter type that
// makes the two overloads different.
// Make me compile!
// I AM NOT DONE

fn describe(x: i64) -> u8[>..] { str("int ", x) }
fn describe(x: i64) -> u8[>..] { str("float ", x) }

fn main() {
    let a = describe(7);
    let b = describe(2.5);
    print(a, ", ", b);
    assert(a == "int 7" && b == "float 2.5");
}
