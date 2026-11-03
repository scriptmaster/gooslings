// generics4
// Make me compile! Return the largest element of any slice.

fn largest<T>(xs: T[:]) -> T {
    var best = xs[0];
    for x in xs { if x > best { best = x; } }
    return best;
}

fn main() {
    assert(largest([3, 9, 4]) == 9);
    assert(largest([1.5, 0.5]) == 1.5);
    assert(largest(['a', 'z', 'c']) == 'z');
    print("largest ok");
}
