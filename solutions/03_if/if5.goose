// if5
// `block` gives `break` a target without a loop, so a chain of checks can bail
// out with a value (ziglings' labeled blocks).
// Make me compile!

fn verdict(alive: bool, hp: i64) -> u8[:] {
    block {
        guard alive else { break "gone"; }
        guard hp > 0 else { break "dead"; }
        "standing"
    }
}

fn main() {
    assert(verdict(false, 10) == "gone");
    assert(verdict(true, 0) == "dead");
    assert(verdict(true, 10) == "standing");
    print("verdicts ok");
}
