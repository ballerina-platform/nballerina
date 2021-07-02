define i8 @foo (i64 %_0) {
  %_1 = trunc i64 %_0 to i8
  ret i8 %_1
}
define i1 @bar (i64 %_0) {
  %_1 = trunc i64 %_0 to i1
  ret i1 %_1
}
