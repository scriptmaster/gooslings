// generics8
// Count and print the fields of any struct with `const for`. Make me compile!

struct Point { x: i64, y: i64, label: u8[..8] }

fn count_fields<T>(v: T&) -> i64 {
    var n = 0;
    const for <N, A> in fields<T> { n += 1; }
    return n;
}

fn main() {
    var p = Point { x: 2, y: 3, label: "pt" };
    assert(count_fields(p) == 3);
    print("fields: ", count_fields(p));
}
