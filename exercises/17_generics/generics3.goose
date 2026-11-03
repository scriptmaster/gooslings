// generics3
// Make me compile! `default<T>()` is the zero value of T.
// I AM NOT DONE

fn zero<T>() -> T { default<T>() }

fn main() {
    let a = zero<>();
    let b = zero<f64>() + 0.5;
    assert(a == 0);
    assert(b == 0.5);
    print(a, " ", b);
}
