// lifetimes3
// A struct holding a view of a variable that dies first is rejected. Make
// the struct own its (short) text. Make me compile!
// I AM NOT DONE

struct Label { text: u8[:] }

fn main() {
    var l: Label;
    {
        var s: u8[>..] = [];
        s.append("hi");
        l = Label { text: s };
    }
    assert(l.text == "hi");
    print(l.text);
}
