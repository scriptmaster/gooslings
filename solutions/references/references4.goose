// references4
// `cur.left .= pool.push(...)` pushes the node and writes the link. Make me
// compile!

struct Node { key: i32, left: Node&<u32>?, right: Node&<u32>? }

fn main() {
    var pool: Node[>..] = [];
    var root .= pool.push(Node { key: 1 });
    root.left .= pool.push(Node { key: 0 });
    root.right .= pool.push(Node { key: 2 });
    let l = root.left;
    assert(l);
    assert(l.key == 0);
    print("links ok");
}
