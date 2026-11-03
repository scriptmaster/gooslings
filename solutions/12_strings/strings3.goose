// strings3
// Make me compile! Slices of text cost nothing: they point into the original.
import std;

fn main() {
    let line = "  key = some value  ";
    let body = trim(line);
    let eq = find(body, "=");
    assert(eq == 4);
    let key = trim(body[..eq]);
    let value = trim(body[eq + 1..]);
    assert(key == "key");
    assert(value == "some value");
    print("'", key, "' -> '", value, "'");
}
