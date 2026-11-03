// functions8
// Uniform function call syntax (UFCS): `x.f(a)` means `f(x, a)`.
// Make me compile!
// I AM NOT DONE

fn double(n: i64) -> i64 { n * 2 }

fn main() {
    let n = 21;
    let a = double(n);
    let b = n.twice();
    assert(a == 42 && b == 42);
    print(a, " ", b);
}
