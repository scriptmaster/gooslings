// errors5
// The `exception` module packages `return ... from` as typed try/throw.
// Make me compile!
// I AM NOT DONE
import exception;

fn load() {
    exception::throw(str("cannot load item ", 42));
}

fn main() {
    var message: u8[>..] = [];
    exception::try<u8[]>(load) { error => message.append(error); };
    assert(message == "nothing");
    print(message);
}
