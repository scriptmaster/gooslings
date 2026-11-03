// lifetimes5
// References into a growable array cannot be kept in a struct across a shrink.
// Remember where the element is with an index. Make me compile!

struct Cursor { at: i64 }

fn main() {
    var stack: i64[>..<] = [10, 20, 30];
    var c = Cursor { at: stack.len - 1 };
    stack.pop();
    assert(stack.len == 2);
    assert(c.at == 2);
    print("cursor at ", c.at);
}
