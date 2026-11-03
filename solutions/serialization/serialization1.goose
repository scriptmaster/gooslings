// serialization1
// A structure of self-relative links is already a file format: no serializer,
// no schema, no pointer fixups. Make me compile!

struct Node { key: i32, left: Node&<u32>?, right: Node&<u32>? }

fn main() {
    var pool: Node[>..] = [];
    var root .= pool.push(Node { key: 5 });
    root.left .= pool.push(Node { key: 2 });
    root.right .= pool.push(Node { key: 8 });

    var image: u8[>..] = pool.to_bytes();
    var loaded, ok = from_bytes<Node[>..]>(image);
    assert(ok);
    assert(loaded.len == 3);
    print("loaded ", loaded.len, " nodes from ", image.len, " bytes");
}
