// references3
// A binary search tree in one grow-only array with 4-byte self-relative links.
// A non-optional relative reference has no null, so a leaf could never be built.
// Make me compile!

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

fn main() {
    var pool: Node[>..] = [];
    let keys: i32[5] = [5, 2, 8, 1, 9];
    for k in keys { insert(pool, k); }
    assert(pool.len == 5);
    print(pool.len, " nodes, links included");
}
