// references2
// Two references can be equal in value yet point at different things.
// Make me compile!

struct P { x: i64 }

fn main() {
    var a = P { 1 };
    var b = P { 1 };
    let ra .= a;
    let rb .= a;
    let rc .= b;
    assert(ra == rc);
    assert(ra .== rb);
    assert(!(ra .== rc));
    print("identity ok");
}
