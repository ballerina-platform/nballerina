define i8 @foo(i64 %0) {
  %2 = trunc i64 %0 to i8
  ret i8 %2
}
define i1 @bar(i64 %0) {
  %2 = trunc i64 %0 to i1
  ret i1 %2
}
