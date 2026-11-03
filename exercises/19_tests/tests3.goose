// tests3
// Make me pass! A tiny test table, the Goose way: a loop of assertions.
// I AM NOT DONE

fn fizz(n: i64) -> u8[:] {
    if n % 15 == 0 { "fizzbuzz" }
    else if n % 3 == 0 { "fizz" }
    else if n % 5 == 0 { "buzz" }
    else { "" }
}

fn main() {
    let cases: i64[4] = [3, 5, 15, 7];
    let expected = ["fizz", "buzz", "fizz", ""];
    for c, i in cases {
        assert(fizz(c) == expected[i]);
    }
    print("all cases pass");
}
