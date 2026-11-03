// dictionary1
// Make me compile! A dictionary is the hash map: `dictionary<K, V>`.
import dictionary;

fn main() {
    var stock = dictionary<const u8[:], i64> {};
    stock.insert("apple", 3);
    stock.insert("banana", 5);
    let n = stock.get("banana");
    if n { assert(n == 5); } else { assert(false); }
    let missing = stock.get("cherry");
    assert(missing == null);
    assert(stock.count == 2);
    print("stock ok");
}
