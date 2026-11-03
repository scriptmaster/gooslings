// strings2
// Make me compile! Use `str` to render several values into a string.

fn main() {
    let name = "ada";
    let age = 36;
    let line = str(name, " is ", age);
    assert(line == "ada is 36");
    print(line);
}
