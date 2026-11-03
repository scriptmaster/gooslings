// options5
// A linked list through optional references. Make me compile!
// I AM NOT DONE

struct Node { v: i64, next: Node? }

fn main() {
    var c = Node { v: 3, next: null };
    var b = Node { v: 2, next: c };
    var a = Node { v: 1, next: b };
    var cur: Node? = a;
    var sum = 0;
    while cur {
        sum += cur.v;
        cur = cur.next;
    }
    assert(sum == 6);
    print("sum ", sum);
}
