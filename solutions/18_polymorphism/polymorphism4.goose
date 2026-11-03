// polymorphism4
// (A format overload is picked up for a value whose static type is `Shape`.)
// Make me compile! Give `Shape` a rendering so `print` shows a name.

enum Shape { Circle { r: f64 }, Square { side: f64 } }

fn format(out: u8[>..]&, s: Shape) {
    match s {
        Circle c => format(out, "circle(", c.r, ")"),
        Square q => format(out, "square(", q.side, ")"),
    }
}

fn main() {
    let c: Shape = Shape.Circle { r: 1.5 };
    let q: Shape = Shape.Square { side: 2.0 };
    assert(str(c) == "circle(1.5)");
    assert(str(q) == "square(2.0)");
    print(c, " ", q);
}
