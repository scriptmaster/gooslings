// lifetimes2
// Returning a reference to a local is rejected. Return the value instead; a
// growable array returned by value is built directly in its destination, so
// nothing is copied. Make me compile!
// I AM NOT DONE

fn make() -> u8[:] {
    var local: u8[>..] = [];
    local.append("hello");
    return local[..];
}

fn main() {
    let s = make();
    assert(s == "hello");
    print(s);
}
