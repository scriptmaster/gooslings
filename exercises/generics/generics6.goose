// generics6
// Higher-order functions without closures or function pointers. Make me compile!
// I AM NOT DONE

fn apply_twice<F>(x: i64) -> i64 { F(F(x)) }

fn main() {
    let r = apply_twice(3) { it };
    assert(r == 12);
    print("r = ", r);
}
