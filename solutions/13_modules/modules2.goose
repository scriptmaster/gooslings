// modules2
// Namespaces group declarations and affect only name resolution; there is no
// privacy. Call the function by its qualified name. Make me compile!
import std;
namespace geo;

struct Pt { x: i64, y: i64 }

fn norm1(p: Pt) -> i64 { abs(p.x) + abs(p.y) }

fn ::main() {
    let p = geo::Pt { -3, 4 };
    assert(geo::norm1(p) == 7);
    print(p, " has norm ", geo::norm1(p));
}
