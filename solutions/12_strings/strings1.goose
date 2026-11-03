// strings1
// Make me compile! Build a string.

fn main() {
    var s: u8[>..] = [];
    s.append("hello");
    s.push(',');
    format(s, " world! ", 6 * 7);
    assert(s == "hello, world! 42");
    assert(s.len == 16);
    print(s);
}
