// structs7
// Make me compile! Records with `varint` fields and variable-size strings stay
// one contiguous run of bytes. The price: an array of them can be iterated but
// not indexed.
// I AM NOT DONE

struct Item { sku: u8[varint], qty: varint, cents: varint }

fn main() {
    var items: Item[>..] = [];
    items.push(Item { sku: "SKU-441", qty: 2, cents: 1999 });
    items.push(Item { sku: "SKU-7", qty: 1, cents: 500 });
    var total = 0;
    total = items[0].qty * items[0].cents;
    assert(total == 4498);
    print("total ", total, " cents");
}
