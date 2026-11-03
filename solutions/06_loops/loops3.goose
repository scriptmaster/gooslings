// loops3
// Make me compile (and finish)! Find the first power of two above 1000.

fn main() {
    var p = 1;
    loop {
        if p > 1000 { break; }
        p *= 2;
    }
    assert(p == 1024);
    print("p = ", p);
}
