// primitive1
// Make me compile!

fn main() {
    let is_morning = true;
    if is_morning {
        print("Good morning!");
    }

    let is_evening: bool = !is_morning;
    if is_evening {
        print("Good evening!");
    }
    assert(!is_evening);
}
