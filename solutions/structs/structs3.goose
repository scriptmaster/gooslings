// structs3
// Make me compile! A struct literal ending in `..` fills in the rest.

struct Order { id: i64, qty: i64, note: u8[..16], paid: bool }

fn main() {
    let o = Order { id: 7, .. };
    assert(o.qty == 0);
    assert(o.note.len == 0);
    assert(!o.paid);
    print(o);
}
