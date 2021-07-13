define i64 @foo (i8* %_0) {
  %_1 = ptrtoint i8* %_0 to i64
  ret i64 %_1
}
define i1 @bar (i8* %_0) {
  %_1 = ptrtoint i8* %_0 to i1
  ret i1 %_1
}
