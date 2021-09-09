Each test case has a filename of the form _S_-_F_/_T_-_K_.bal where
* _S_ is the two digit subset number
* _F_ is a feature implemented by the subset
* _T_ is the test name
* _K_ is a code for the kind of test it is

_K_ can be any of the following:

* `v`: (valid) this compiles and runs without panicking when executed; this has `@output` comments giving the expected lines of output
* `o`: (over-implementation) this is compiles and runs without panicking when executed, in conformance with Ballerina language specification, but goes beyond the current subset
* `o`: (panic) this compiles but panics when executed: this would have a `@panic` comment on the line which should panic
* `e`:  (error) this should get a compilation error: this would have an `@error` on the line on which an error should be reported; this should only be for cases that are errors according to the full Ballerina spec (XXX need a way to distinguish whether parse error or semantic error is expected)
* `u`: (unimplemented) this is for something that is not in the subset; it is followed by another letter saying what kind of test it will become when the subset grows to include this:
   * it can be like a `v` case with an `@output` comment
   * it can be like an `e` case with an `@error` comment
* `f`: (fail) this is for current failing test cases; it should be followed by one of the other letters
