// generics2
// Make me compile! A type parameter names the element type of a slice, and the
// result may use it too.
// I AM NOT DONE

fn first<T>(xs: T[:]) -> i64 { xs[0] }

fn main() {
    assert(first([3, 10]) == 3);
    assert(first([2.5, 1.0]) == 2.5);
    print(first([7, 8]), " ", first([0.25]));
}
