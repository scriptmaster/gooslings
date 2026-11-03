// quiz4
// Build a binary search tree in one array and print it in order. Complete
// `in_order` so the keys come out sorted. Recursion is opt-in and annotated:
// the entry of a cycle is a `recursive fn`.
// I AM NOT DONE

struct Node { key: i32, left: Node&<u32>?, right: Node&<u32>? }

fn insert(pool: Node[>..]&, key: i32) {
    if pool.len == 0 { pool.push(Node { key: key }); return; }
    var cur .= pool[0];
    loop {
        if key < cur.key {
            let l = cur.left;
            if l { cur .= l; continue; }
            cur.left .= pool.push(Node { key: key });
            return;
        }
        let r = cur.right;
        if r { cur .= r; continue; }
        cur.right .= pool.push(Node { key: key });
        return;
    }
}

recursive fn in_order(n: Node&, out: i32[>..]&) {
    
}

fn main() {
    var pool: Node[>..] = [];
    let keys: i32[7] = [5, 2, 8, 1, 9, 3, 7];
    for k in keys { insert(pool, k); }
    var sorted: i32[>..] = [];
    in_order(pool[0], sorted);
    assert(sorted.len == 7 && sorted[0] == 1 && sorted[3] == 5 && sorted[6] == 9);
    print(sorted);
}
