The filename of each test case starts with a letter that says what kind of test it is:

* `V`: (valid) this compiles and runs without panicking when executed; this has `@output` comments giving the expected lines of output
* `O`: (overimplementation) this is compiles and runs without panicking when executed, in conformance with Ballerina language specification, but goes beyond the current subset
* `P`: (panic) this compiles but panics when executed: this would have a `@panic` comment on the line which should panic
* `E`:  (error) this should get a compilation error: this would have an `@error` on the line on which an error should be reported; this should only be for cases that are errors according to the full Ballerina spec (XXX need a way to distinguish whether parse error or semantic error is expected)
* `U`: (unimplemented) this should be like a `V` test, but is for something that is not in the subset: this should result in an error of type parse or unsupported not not semantic; when a feature is implemented U tests can be renamed to V tests
* `F`: (fail) this is for current failing test cases; it should be followed by one of the other letters

