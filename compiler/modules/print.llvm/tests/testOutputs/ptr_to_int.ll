define i64 @foo (i8* %0) {
  %2 = ptrtoint i8* %0 to i64
  ret i64 %2
}
define i1 @bar (i8* %0) {
  %2 = ptrtoint i8* %0 to i1
  ret i1 %2
}
