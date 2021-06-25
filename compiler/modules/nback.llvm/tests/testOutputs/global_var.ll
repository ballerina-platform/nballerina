@g1 = external global i64
define i64 @testFn (i64 %_0) {
  %_1 = ptrtoint i64* @g1 to i64
  %_2 = add i64 %_1, %_0
  ret i64 %_2
}
