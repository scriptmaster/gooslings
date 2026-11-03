// dictionary5
// Make me compile! Sum every value in the dictionary.
// I AM NOT DONE
import dictionary;

fn main() {
    var d = dictionary<i64, i64> {};
    d.insert(1, 10);
    d.insert(2, 20);
    d.insert(3, 30);
    var sum = 0;
    d.each() { k, v => sum += k; };
    assert(sum == 60);
    print("sum ", sum);
}
