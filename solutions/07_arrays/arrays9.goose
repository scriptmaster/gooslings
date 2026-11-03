// arrays9
// Make me compile!
import std;

fn main() {
    var grid: i64[16] = [0; 16];
    fill(grid, 7);
    var sum = 0;
    for x in grid { sum += x; }
    assert(sum == 112);
    print("sum = ", sum);
}
