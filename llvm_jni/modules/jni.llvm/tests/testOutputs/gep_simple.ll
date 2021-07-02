define i64* @foo(i64* %0) {
  %2 = getelementptr i64, i64* %0, i64 3
  ret i64* %2
}

define i8* @bar(i8* %0) {
  %2 = getelementptr i8, i8* %0, i64 3
  ret i8* %2
}
