// if2
// Make me compile! Return the correct reply for each message.
// I AM NOT DONE

fn picky_eater(food: u8[:]) -> u8[:] {
    if food == "strawberry" {
        "Yummy!"
    } else if food == "potato" {
        "I guess I can eat that."
    }
}

fn main() {
    assert(picky_eater("strawberry") == "Yummy!");
    assert(picky_eater("potato") == "I guess I can eat that.");
    assert(picky_eater("broccoli") == "No thanks!");
    assert(picky_eater("gummy bears") == "No thanks!");
    print("picky ok");
}
