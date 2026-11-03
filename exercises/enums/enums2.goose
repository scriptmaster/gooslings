// enums2
// Make me compile! Give the variants payloads.
// I AM NOT DONE

enum Message {
    Quit,
    Echo { text: u8[..32] },
    Move { x: i64, y: i64 },
    ChangeColor { r: u8, g: u8, b: u8 },
}

fn main() {
    var msgs: Message[>..] = [];
    msgs.push(Message.Echo { text: "hello" });
    msgs.push(Message.Move { x: 10, y: 30 });
    msgs.push(Message.ChangeColor { 0, 255, 128, 99 });
    msgs.push(Message.Quit);
    for m in msgs { print(m); }
    assert(msgs.len == 4);
}
