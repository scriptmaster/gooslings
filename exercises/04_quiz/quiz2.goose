// quiz2
// Students have a name and a score. Write `best` so it returns the name of the
// student with the highest score. No hints this time!
// I AM NOT DONE
import std;

struct Student { name: u8[..16], score: i64 }

fn best(students: Student[:]) -> u8[..16] {
    return "";
}

fn main() {
    var class: Student[>..] = [];
    class.push(Student { name: "ada", score: 90 });
    class.push(Student { name: "grace", score: 97 });
    class.push(Student { name: "alan", score: 85 });
    let b = best(class);
    assert(b == "grace");
    print("best: ", b);
}
