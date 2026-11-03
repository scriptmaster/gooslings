// dictionary6
// The slot array can move when the table grows, so the checker refuses a
// reference into it that outlives a later `insert`. Make me compile!
// I AM NOT DONE
import dictionary;

fn main() {
    var d = dictionary<i64, i64> {};
    d.insert(1, 10);
    let v = d.get(1);
    d.insert(2, 20);
    if v { print("value ", v); }
    assert(d.count == 2);
}
