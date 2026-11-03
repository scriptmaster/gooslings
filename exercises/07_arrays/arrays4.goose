// arrays4
// Make me compile!
// I AM NOT DONE


fn main() {
    var xs: i64[>..<] = [1, 2, 4, 5];
    xs.insert_at(2, 3);
    assert(xs.len == 5 && xs[2] == 3);
    let gone = xs.remove_at(0);
    assert(gone == 1 && xs.len == 4);
    print(xs);
}
