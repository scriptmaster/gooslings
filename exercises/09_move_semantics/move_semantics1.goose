// move_semantics1
// NOT APPLICABLE: Goose has no move semantics.
//
// Why: in Rust, ownership moves from one variable to another and the borrow
// checker tracks it. In Goose every dynamic value is owned by exactly one
// variable that lives in a scope, memory is a set of bump-pointer "data
// stacks", and a non-fixed value is *never* silently copied or moved:
// `var b = a;` binds b to a by reference, and `copy(a)` is an explicit copy.
//
// Do the `memory1` .. `memory6` exercises instead; they teach the Goose
// equivalent (visible copies, scope-exit frees, references that survive growth).

fn main() {
    print("move_semantics1 is NOT APPLICABLE to Goose, see the comments in this file.");
}
