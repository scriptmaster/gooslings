// dictionary3
// Make me compile!
// I AM NOT DONE
import dictionary;

fn main() {
    var d = dictionary<i64, i64> {};
    for i in 10 { d.insert(i, i * i); }
    assert(d.contains(3));
    assert(d.delete(3));
    assert(!d.contains(3));
    assert(d.count == 9);
    print("count ", d.count);
}
