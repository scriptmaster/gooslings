// functions7
// Give `scale` a default so that `scaled(5)` compiles, while `scaled(5, 3)`
// still works.
// Make me compile!
// I AM NOT DONE

fn scaled(x: i64, scale: i64) -> i64 { x * scale }

fn main() {
    assert(scaled(5) == 10);
    assert(scaled(5, 3) == 15);
    print("scaled ok");
}
