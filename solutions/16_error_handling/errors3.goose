// errors3
// Long-distance return: the lightweight exception. Make me compile!
import std;

fn load(text: u8[:]) -> i64, u8[] {
    var total = 0;
    each_split(text, ',') { total += parse_part(it); };
    return total, "";
}

fn parse_part(part: u8[:]) -> i64 {
    let n, ok = parse_int(trim(part));
    guard ok else { return 0, str("bad number: ", part) from load; }
    return n;
}

fn main() {
    let t, err = load("1, 2, 3");
    assert(err.len == 0 && t == 6);
    let _, err2 = load("1, two, 3");
    assert(err2 == "bad number:  two");
    print("total ", t, ", error: ", err2);
}
