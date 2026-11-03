// NOT APPLICABLE: defer / errdefer (ziglings defer1-2, errdefer)
//
// Why: There is no defer statement; scope-based freeing is automatic and `checkfree` handles resources. Failure paths use optionals and `guard` (see options/ and error_handling/).
