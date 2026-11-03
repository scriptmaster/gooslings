// threads4
// A supervisor can survive a crashing worker. Make me pass!
// I AM NOT DONE
import std;

thread_fn crasher(n: i64) {
    assert(n > 5);
}

fn main() {
    var why: u8[>..] = [];
    let ok = thread_wait(thread_spawn(crasher, 3), why);
    assert(!ok);
    assert(why.len > 0);
    print("worker said: ", why);
}
