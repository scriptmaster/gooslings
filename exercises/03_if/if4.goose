// if4
// `match` is an expression too. Ranges are half-open: `1..50` is 1 up to 49.
// Make me compile!
// I AM NOT DONE

fn describe(hp: i64) -> u8[:] {
    match hp {
        0 => "dead",
        1..50 => "low",
        50..100 => "fine",
        
    }
}

fn main() {
    assert(describe(0) == "dead");
    assert(describe(49) == "low");
    assert(describe(50) == "fine");
    assert(describe(250) == "overhealed");
    print("match ok");
}
