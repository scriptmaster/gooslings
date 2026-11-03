// quiz3
// Count the words, then report the most common one.
import std;
import dictionary;

struct Entry { word: u8[..16], n: i64 }

fn most_common(text: u8[:]) -> u8[..16] {
    var counts = dictionary<const u8[:], i64> {};
    each_split(text, ' ') { counts.update(it, 0) { it += 1; }; };
    var entries: Entry[>..] = [];
    counts.each() { w, n => entries.push(Entry { word: w, n: n }); };
    sort(entries) { a, b => a.n > b.n };
    return entries[0].word;
}

fn main() {
    let w = most_common("a b a c b a d");
    assert(w == "a");
    print("most common: ", w);
}
