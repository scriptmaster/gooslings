// NOT APPLICABLE: static mut / threadlocal (ziglings)
//
// Why: Goose has module-level `var` that is per-thread (see threads/threads3); there is no static mut or thread-local keyword.
