// lifetimes1
// Every reference and slice has a static root: the variable that bounds its
// target's lifetime. Make me compile!

fn longest(a: u8[:], b: u8[:]) -> u8[:] { if a.len >= b.len { a } else { b } }

fn main() {
    var outer: u8[>..] = [];
    outer.append("outer text");
    var inner: u8[>..] = [];
    inner.append("inner");
    var w = outer[..];
    w = longest(outer, inner);
    assert(w == "outer text");
    print(w);
}
