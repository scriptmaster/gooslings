// memory1
// Rust's "move semantics" do not exist in Goose, but copies are visible: a
// growable array is never copied unless you write `copy`.
// Make me compile (and behave)!
// I AM NOT DONE

fn main() {
    var a: i64[>..] = [1, 2, 3];
    var b = a;
    b.push(4);
    assert(a.len == 3);
    assert(b.len == 4);
    print(a, " ", b);
}
