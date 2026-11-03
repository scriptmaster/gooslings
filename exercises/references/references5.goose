// references5
// A pool for data whose lifetimes are not nested. `free` does not release
// memory, it only makes the slot available again. (`reusable` is deprecated in
// newer Goose releases in favour of library pools, but v2026.3 has it.)
// Make me compile!
// I AM NOT DONE

struct Item { id: i32, w: f32 }

reusable var pool: Item[>..] = [];

fn main() {
    let s0 = pool.alloc_index(Item { 10, 1.0 });
    let s1 = pool.alloc_index(Item { 11, 1.0 });
    pool.
    let s2 = pool.alloc_index(Item { 12, 2.0 });
    assert(s2 == s0);
    assert(pool.len == 2);
    assert(s1 != s2);
    print("slot ", s2, " reused");
}
