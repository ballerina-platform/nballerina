@g1 = external global i64

define i64 @testFn(i64 %0) {
  %2 = add i64 ptrtoint (i64* @g1 to i64), %0
  ret i64 %2
}
