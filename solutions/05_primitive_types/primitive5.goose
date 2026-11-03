// primitive5
// Slices can also count from the end with `^k`.
// Make me compile!

fn main() {
    let a = [10, 20, 30, 40, 50];
    let tail = a[^2..];
    assert(tail.len == 2);
    assert(tail[0] == 40);
    let head = a[..2];
    assert(head.len == 2);
    print(head, " ", tail);
}
