// enums6
// Fixed-mode enums are as big as the biggest variant and can change variant.
// Make me compile!

enum Shape { Circle { r: f64 }, Rect { w: f64, h: f64 }, Dot }

fn main() {
    var shapes: Shape[>..] = [];
    shapes.push(Shape.Circle { r: 1.0 });
    shapes.push(Shape.Dot);
    shapes[1] = Shape.Rect { w: 1.0, h: 1.0 };
    var rects = 0;
    for s in shapes {
        match s {
            Rect r => { rects += 1; },
            _ => {},
        }
    }
    assert(rects == 1);
    print("rects ", rects);
}
