// threads3
// A worker that increments a global increments its own copy; main's is
// untouched. Make me pass by reporting the count through a queue.
import std;

struct Count { n: i64 }

var counter: i64 = 0;

thread_fn counting() {
    counter += 10;
    qput(Count { n: counter });
}

fn main() {
    let id = thread_spawn(counting);
    thread_wait(id);
    assert(counter == 0);
    let c = qget<Count>();
    assert(c.n == 10);
    print("main's counter ", counter, ", the worker's ", c.n);
}
