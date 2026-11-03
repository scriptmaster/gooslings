// arrays2
// Make me compile! A frozen array `T[]` is sized once. Use a grow-only one.

fn main() {
    var xs: i64[>..] = [1, 2, 3];
    xs.push(4);
    assert(xs.len == 4);
    print(xs);
}
