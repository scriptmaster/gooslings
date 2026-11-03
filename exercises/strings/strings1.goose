// strings1
// Make me compile! Build a string.
// I AM NOT DONE

fn main() {
    var s: u8[>..] = [];
    s.append("hello");
    s.push(',');
    format(s, " world! ", 6 * 7);
    assert(s == "hello, world! 42");
    assert(s.len == 15);
    print(s);
}
