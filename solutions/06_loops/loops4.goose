// loops4
// Make me compile!

fn main() {
    let names = ["ada", "grace", "linus"];
    var last_index = 0;
    for name, i in names {
        print(i, ": ", name);
        last_index = i;
    }
    assert(last_index == 2);
}
