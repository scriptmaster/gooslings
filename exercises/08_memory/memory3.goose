// memory3
// Nothing moves, so references into a growing array survive growth. A
// C++ vector or a Rust Vec could never promise that.
// Make me compile!
// I AM NOT DONE

struct Item { id: i32, weight: f32 }

fn main() {
    var items: Item[>..] = [];
    let first = items.push(Item { 1, 0.5 });
    for i in 2..1001 { items.push(Item { i as i32, 0.0 }); }
    first.weight = 99.5;
    assert(items[0].weight == 99.5);
    print(items.len, " items, first is ", items[0]);
}
