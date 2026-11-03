// dictionary1
// Make me compile! A dictionary is the hash map: `dictionary<K, V>`.
// I AM NOT DONE
import dictionary;

fn main() {
    var stock = dictionary<const u8[:], i64> {};
    stock.insert("apple", 3);
    stock.insert("banana", 5);
    let n = stock.get("banana");
    assert(n == 5);
    let missing = stock.get("cherry");
    assert(missing == null);
    assert(stock.count == 2);
    print("stock ok");
}
