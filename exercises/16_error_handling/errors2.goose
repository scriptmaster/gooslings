// errors2
// Make me compile! Billy is trying to buy some tokens: each costs 5 and
// there is a processing fee of 1 per order. Parse the quantity and report a
// problem as an error message instead of crashing.
// I AM NOT DONE
import std;

fn total_cost(qty: u8[:]) -> i64, bool {
    let n, ok = parse_int(qty);
    
    return n * 5 + 1, true;
}

fn main() {
    let c, ok = total_cost("8");
    assert(ok && c == 41);
    let _, bad = total_cost("beep boep");
    assert(!bad);
    print("cost ", c);
}
