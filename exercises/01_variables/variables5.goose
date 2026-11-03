// variables5
// Shadowing: a new `let` with the same name hides the earlier one, and may even
// have a different type.
// Make me compile!
// I AM NOT DONE

fn main() {
    let number = "T-H-R-E-E";
    print("Spell a number: ", number);

    number = 3;
    print("Number plus two is: ", number + 2);
    assert(number + 2 == 5);
}
