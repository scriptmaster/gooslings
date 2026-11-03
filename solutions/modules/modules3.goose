// modules3
// Standard modules such as `dictionary` provide generic types. Make me compile!
import dictionary;

fn main() {
    var ages = dictionary<i64, i64> {};
    ages.insert(1, 36);
    assert(ages.count == 1);
    print("count ", ages.count);
}
