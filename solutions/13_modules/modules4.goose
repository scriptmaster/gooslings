// modules4
// A file with `namespace app;` declares everything into `app`, `main` included,
// and then the program has no entry point. Make me compile!
namespace app;

fn greeting(name: u8[:]) -> u8[>..] { str("hello, ", name) }

fn ::main() {
    let g = app::greeting("goose");
    assert(g == "hello, goose");
    print(g);
}
