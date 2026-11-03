// strings8
// Make me compile! A multi-line string literal.

fn main() {
    let usage = """
        usage: wc [-l] file
          -l   count lines only
        """;
    var lines = 0;
    for c in usage { if c == '\n' { lines += 1; } }
    assert(lines == 1);
    print(usage);
}
