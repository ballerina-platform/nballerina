define i64* @foo (i8* %0) {
  %2 = bitcast i8* %0 to i64*
  ret i64* %2
}
