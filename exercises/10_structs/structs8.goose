// structs8
// Make me compile! A `format` overload tells print, str and format how to render
// your own type (compare Rust's Display).
// I AM NOT DONE

struct Point { x: i64, y: i64 }

fn format(out: u8[>..]&, p: Point) {
    format(out, "(", p.x, ", ", p.y, "");
}

fn main() {
    let p = Point { 3, 4 };
    assert(str(p) == "(3, 4)");
    print(p);
}
