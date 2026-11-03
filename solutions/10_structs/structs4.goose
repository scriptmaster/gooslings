// structs4
// Make me compile! Goose has no methods, so write free functions and call
// them with method syntax.

struct Point { x: i64, y: i64 }

fn moved(p: Point, dx: i64, dy: i64) -> Point {
    Point { p.x + dx, p.y + dy }
}

fn shift(p: Point&, dx: i64) {
    p.x += dx;
}

fn main() {
    var p = Point { 1, 2 };
    let q = p.moved(10, 20);
    assert(q.x == 11 && q.y == 22);
    p.shift(5);
    assert(p.x == 6);
    print(p, " ", q);
}
