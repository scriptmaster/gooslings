// errors7
// NOT APPLICABLE: the `?` operator, `Box<dyn Error>`, `From` for error types.
//
// Why: Goose has no `Result` type, no `?` operator, no trait objects and no
// `From`/`Into`. An error is an ordinary return value (a trailing `bool`, an
// optional `T?`, or an error string next to the result) or a long-distance
// `return E from f`.
//
// Do `errors1` .. `errors5` instead; they teach the Goose idioms.

fn main() {
    print("errors7 is NOT APPLICABLE to Goose, see the comments in this file.");
}
