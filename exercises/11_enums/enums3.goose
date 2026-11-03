// enums3
// Make me compile! Complete the match so every variant is handled.
// I AM NOT DONE

enum Message {
    Quit,
    Move { x: i64, y: i64 },
    Write { len: i64 },
}

fn weight(m: Message) -> i64 {
    match m {
        Quit => 0,
        Move p => p.x + p.y,
        
    }
}

fn main() {
    assert(weight(Message.Quit) == 0);
    assert(weight(Message.Move { x: 1, y: 2 }) == 3);
    assert(weight(Message.Write { len: 9 }) == 9);
    print("weights ok");
}
