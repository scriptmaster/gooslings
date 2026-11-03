// memory4
// `=` copies a fixed-size value. `.=` binds a reference to it, so writes go
// to the original.
// Make me compile!

struct Point { x: i64, y: i64 }

fn main() {
    var pts = [Point { 1, 1 }, Point { 2, 2 }];
    var copy_of = pts[0];
    copy_of.x = 100;
    assert(pts[0].x == 1);

    var alias .= pts[1];
    alias.x = 200;
    assert(pts[1].x == 200);
    print(pts);
}
