// structs2
// Make me compile! Give `hp` a default value so the literal below can omit it.

struct Unit { kind: i32, hp: i32 = 100, x: f32 }

fn main() {
    let scout = Unit { kind: 2, x: 1.5 };
    assert(scout.hp == 100);
    print(scout);
}
