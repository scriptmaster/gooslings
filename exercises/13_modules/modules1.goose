// modules1
// `import name;` includes a file once. The standard library's modules are
// imported by name. Make me compile!
// I AM NOT DONE


fn main() {
    let big = max(3, 9);
    let small = min(3, 9);
    let c = clamp(15, 0, 10);
    assert(big == 9 && small == 3 && c == 10);
    print(big, " ", small, " ", c);
}
