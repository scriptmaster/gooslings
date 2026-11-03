// arrays8
// Make me compile! Choose the right member of the array family for each variable.
//   `T[k]`     fixed size          `T[]`     sized once
//   `T[..k]`   limited, inline     `T[>..]`  grow-only
// I AM NOT DONE

fn main() {
    var builder: u8[] = [];
    builder.append("hello");
    builder.push(' ');
    builder.append("world");
    assert(builder.len == 11);

    var small: u8[..8] = [];
    small.push('o');
    small.push('k');
    assert(small.len == 2);

    let frozen: i64[] = [7, 8, 9];
    assert(frozen.len == 3);
    print(builder, " ", small, " ", frozen);
}
