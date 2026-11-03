// NOT APPLICABLE: Drop (rustlings / RAII)
//
// Why: There are no destructors. Memory is freed by lexical scope; non-memory resources use `checkfree` functions which the compiler proves are released (see the Goose reference).
