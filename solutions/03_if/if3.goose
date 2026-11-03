// if3
// Make me compile! The branches of an `if` that produce a value must agree
// on their type.

fn animal_habitat(animal: u8[:]) -> i64 {
    let identifier = if animal == "crab" {
        1
    } else if animal == "gopher" {
        2
    } else if animal == "snake" {
        3
    } else {
        0
    };
    identifier
}

fn main() {
    assert(animal_habitat("crab") == 1);
    assert(animal_habitat("gopher") == 2);
    assert(animal_habitat("snake") == 3);
    assert(animal_habitat("dinosaur") == 0);
    print("habitats ok");
}
