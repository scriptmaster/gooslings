// dictionary2
// Count words with `update`. Make me compile!
import std;
import dictionary;

fn main() {
    let text = "the quick brown fox jumps over the lazy dog the fox";
    var counts = dictionary<const u8[:], i32> {};
    each_split(text, ' ') { counts.update(it, 0) { it += 1; }; };
    assert(counts.count == 8);
    let the = counts.get("the");
    assert(the && the == 3);
    print(counts.count, " distinct words");
}
