define i64 @foo(ptr %0) {
  %2 = ptrtoint ptr %0 to i64
  ret i64 %2
}

define i1 @bar(ptr %0) {
  %2 = ptrtoint ptr %0 to i1
  ret i1 %2
}
