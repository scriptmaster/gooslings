// arrays1
// Make me compile! Build an array of squares.
// I AM NOT DONE

fn main() {
    var squares: i64[>..] = [];
    for i in 5 {
        squares.add(i * i);
    }
    assert(squares.len == 5);
    assert(squares[4] == 16);
    print(squares);
}
