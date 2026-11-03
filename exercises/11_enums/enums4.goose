// enums4
// Case functions are the vtable-free virtual call: one overload per variant.
// Make me compile!
// I AM NOT DONE

enum Shape { Circle { r: f64 }, Rect { w: f64, h: f64 }, Dot }

fn area(s: Shape.Circle) -> f64 { 3.0 * s.r * s.r }
fn area(s: Shape.Rect) -> f64   { s.w * s.h }


fn main() {
    var shapes: Shape[>..] = [];
    shapes.push(Shape.Circle { r: 1.0 });
    shapes.push(Shape.Rect { w: 2.0, h: 3.0 });
    shapes.push(Shape.Dot);
    var total = 0.0;
    for s in shapes { total += area(s); }
    assert(total == 9.0);
    print("total area ", total);
}
