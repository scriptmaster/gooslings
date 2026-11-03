// polymorphism3
// Dynamic dispatch is an enum plus case functions (no vtables). Add the
// `Square` case so that every variant is covered. Make me compile!
// I AM NOT DONE

enum Animal { Dog { age: i64 }, Cat { lives: i64 }, Fish }

fn sound(a: Animal.Dog) -> u8[:] { "woof" }
fn sound(a: Animal.Cat) -> u8[:] { "meow" }


fn main() {
    var zoo: Animal[>..] = [];
    zoo.push(Animal.Dog { age: 3 });
    zoo.push(Animal.Fish);
    zoo.push(Animal.Cat { lives: 9 });
    var out: u8[>..] = [];
    for a in zoo { format(out, sound(a), " "); }
    assert(out == "woof ... meow ");
    print(out);
}
