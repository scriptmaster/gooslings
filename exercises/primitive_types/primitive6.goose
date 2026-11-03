// primitive6
// Rust's tuples are not part of Goose. A small struct, or several return values,
// plays the role. Make me compile!
// I AM NOT DONE

struct Pair { name: u8[..8], age: i32 }

fn make() -> u8[:], i32 { return "ada", 36; }

fn main() {
    let p = Pair { name: "ada", age: 36 };
    let name, age = make();
    assert(p.age == age);
    assert(p.name == name);
    let q = Pair ( "grace", 45 );
    assert(q.age == 45);
    print(p, " ", q);
}
