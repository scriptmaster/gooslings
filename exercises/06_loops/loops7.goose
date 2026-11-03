// loops7
// Make me compile! Find the first number whose square is above the limit.
// I AM NOT DONE

fn first_above(limit: i64) -> i64 {
    for i in 100 {
        if i * i > limit {  }
    }
    return -1;
}

fn main() {
    assert(first_above(200) == 15);
    assert(first_above(0) == 1);
    assert(first_above(100000) == -1);
    print("first_above ok");
}
