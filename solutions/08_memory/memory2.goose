// memory2
// Scope exit is the free. Each iteration of this loop gets a fresh scratch
// buffer; nothing of it may leak out of the scope.
// Make me compile!

fn main() {
    var best = 0;
    for round in 3 {
        var scratch: u8[>..] = [];
        for i in 1000 { scratch.push((i % 256) as! u8); }
        best = scratch.len;
    }
    assert(best == 1000);
    print("best = ", best);
}
