// threads1
// There is no shared memory: a worker is a separate program. Values cross through
// typed queues, one queue per type. Make me compile!
import std;

struct Num { n: i64 }
struct Squared { n: i64 }

thread_fn worker() {
    loop {
        let job = qget<Num>();
        guard job.n >= 0 else { break; }
        qput(Squared { n: job.n * job.n });
    }
}

fn main() {
    let id = thread_spawn(worker);
    for i in 5 { qput(Num { n: i }); }
    var total = 0;
    for i in 5 { total += qget<Squared>().n; }
    qput(Num { n: -1 });
    thread_wait(id);
    assert(total == 30);
    print("total ", total);
}
