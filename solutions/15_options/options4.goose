// options4
// Make me compile!
import dictionary;

fn main() {
    var d = dictionary<const u8[:], i64> {};
    d.insert("answer", 42);
    let a = d.get("answer");
    assert(a);
    let doubled = a * 2;
    assert(doubled == 84);
    print("doubled ", doubled);
}
