// primitive4
// Slices are views into arrays. They never copy.
// Make me compile!
// I AM NOT DONE

fn main() {
    let a = [1, 2, 3, 4, 5];

    let nice_slice: i64[:] = a[1..5];

    assert(nice_slice.len == 3);
    assert(nice_slice[0] == 2 && nice_slice[2] == 4);
    print(nice_slice);
}
