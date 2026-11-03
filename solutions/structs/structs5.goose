// structs5
// Make me compile! A struct may hold its strings inline, so an array of them is
// one flat block you can sort and copy as plain data.
import std;

struct Person { name: u8[..16], age: i32 }

fn main() {
    var people: Person[>..] = [];
    people.push(Person { name: "ada", age: 36 });
    people.push(Person { name: "grace", age: 45 });
    people.push(Person { name: "alan", age: 41 });
    sort(people) { a, b => a.age > b.age };
    assert(people[0].name == "grace");
    print(people);
}
