define i64 @foo(i64 %0, i64 %1) {
  %3 = add nsw i64 %0, %1
  %4 = sub nsw i64 %0, %1
  %5 = mul nsw i64 %3, %4
  ret i64 %5
}
