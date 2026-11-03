// bits3
// Make me compile! A tiny hash that relies on wrapping multiplication.

fn fnv(s: u8[:]) -> u32 {
    var h: u32 = 2166136261;
    for c in s {
        h = (h ^ c) * 16777619;
    }
    return h;
}

fn main() {
    assert(fnv("") == 2166136261);
    assert(fnv("a") == 0xE40C292C);
    print("fnv(a) = ", fnv("a"));
}
