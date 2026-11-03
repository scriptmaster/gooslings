// bits2
// Make me compile! Pack and unpack an RGB colour.
// I AM NOT DONE

fn pack(r: i64, g: i64, b: i64) -> i64 { (r << 16) | (g << 8) | b }

fn main() {
    let c = pack(0x12, 0x34, 0x56);
    assert(c == 0x123456);
    assert((c >> 8) & 0xFF == 0x12);
    assert(c & 0xFF == 0x56);
    print("packed 0x", c);
}
