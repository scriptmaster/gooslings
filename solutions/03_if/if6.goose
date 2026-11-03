// if6
// Make me compile! A named constant can be used in a `match` arm. Add the
// missing arm so that rocks (and anything unknown) are reported.

let GROUND = 0;
let SHALLOW = 1;
let DEEP = 4;
let LAVA = 7;

fn terrain(t: i64) -> u8[:] {
    match t {
        GROUND => "ground",
        SHALLOW..DEEP => "water",
        LAVA, 10..12 => "hot",
        _ => "rock"
    }
}

fn main() {
    assert(terrain(0) == "ground");
    assert(terrain(3) == "water");
    assert(terrain(7) == "hot");
    assert(terrain(11) == "hot");
    assert(terrain(5) == "rock");
    print("terrain ok");
}
