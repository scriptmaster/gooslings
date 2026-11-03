// serialization2
// Tamper with the image and the verifier refuses it. Make me pass by asserting
// the right outcome.

struct Node { key: i32, left: Node&<u32>?, right: Node&<u32>? }

fn main() {
    var pool: Node[>..] = [];
    var root .= pool.push(Node { key: 5 });
    root.left .= pool.push(Node { key: 2 });
    root.right .= pool.push(Node { key: 8 });

    var image: u8[>..] = pool.to_bytes();
    image[image.len - 3] = 200;
    var bad, ok = from_bytes<Node[>..]>(image);
    assert(!ok);
    assert(bad.len == 0);
    print("tampered image rejected");
}
