// tests2
// Make me pass! Compare whole arrays at once.

fn main() {
    let a = [1, 2, 3];
    var b: i64[>..] = [];
    for i in 3 { b.push(i + 1); }
    assert(a == b);
    print("arrays equal");
}
