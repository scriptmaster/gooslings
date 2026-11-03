// NOT APPLICABLE: Raw pointers and pointer arithmetic (ziglings pointers1-6, sentinels)
//
// Why: No raw pointers. References `T&` are checked and have no arithmetic; sentinel-terminated strings do not exist, strings are length-carrying `u8[:]` (see references/ and strings/).
