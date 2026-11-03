// primitive5
// Slices can also count from the end with `^k`.
// Make me compile!
// I AM NOT DONE

fn main() {
    let a = [10, 20, 30, 40, 50];
    let tail = a[^0..];
    assert(tail.len == 2);
    assert(tail[0] == 40);
    let head = a[..5];
    assert(head.len == 2);
    print(head, " ", tail);
}
