// arrays3
// Make me compile! `T[>..<]` is for stacks, queues and heaps.
// I AM NOT DONE

fn main() {
    var stack: i64[4] = [];
    stack.push(1);
    stack.push(2);
    stack.push(3);
    let top = stack.pop();
    assert(top == 3);
    assert(stack.len == 2);
    print("popped ", top, ", left ", stack);
}
