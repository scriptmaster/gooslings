// enums5
// Enums come in two sizes. In variable mode an array of enums packs every value
// at its own variant's size, and you may edit a payload in place through a
// `&` binder. Make me compile!

enum Shape { Circle { r: f64 }, Rect { w: f64, h: f64 }, Dot }

fn main() {
    var packed: Shape..[>..] = [];
    packed.push(Shape.Circle { r: 1.0 });
    packed.push(Shape.Dot);
    packed.push(Shape.Rect { w: 2.0, h: 3.0 });
    for s in packed {
        match s {
            Rect &r => { r.w += 1.0; },
            _ => {},
        }
    }
    var width = 0.0;
    for s in packed {
        match s {
            Rect r => { width = r.w; },
            _ => {},
        }
    }
    assert(width == 3.0);
    print("width ", width);
}
