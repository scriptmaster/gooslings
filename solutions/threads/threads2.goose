// threads2
// Many workers share one queue per type. Make me compile (and finish)!
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
    let workers = max(2, hardware_threads());
    for i in 8 { qput(Num { n: i }); }
    for i in workers { qput(Num { n: -1 }); }
    var ids: i64[>..] = [];
    for i in workers { ids.push(thread_spawn(worker)); }
    var total = 0;
    for i in 8 { total += qget<Squared>().n; }
    for id in ids { thread_wait(id); }
    assert(total == 140);
    print(workers, " workers, total ", total);
}
