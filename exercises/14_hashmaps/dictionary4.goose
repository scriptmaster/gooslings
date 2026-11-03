// dictionary4
// Make me compile! `dictionary<K, bool>` is Goose's set.
// I AM NOT DONE
import dictionary;

fn main() {
    var seen = dictionary<i64, i64> {};
    var dupes = 0;
    for x in [1, 2, 3, 2, 1, 4] {
        if !seen.insert(x, true) { dupes += 1; }
    }
    assert(dupes == 2);
    assert(seen.count == 4);
    print(dupes, " duplicates");
}
