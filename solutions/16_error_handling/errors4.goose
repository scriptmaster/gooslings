// errors4
// Make me compile! Reject invalid input early with `guard`.

fn describe_temp(c: i64) -> u8[:] {
    guard c > -274 else { return "impossible"; }
    guard c < 100 else { return "boiling"; }
    return "ok";
}

fn main() {
    assert(describe_temp(-300) == "impossible");
    assert(describe_temp(150) == "boiling");
    assert(describe_temp(20) == "ok");
    print("guards ok");
}
