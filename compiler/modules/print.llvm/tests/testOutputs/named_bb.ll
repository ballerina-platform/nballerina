define i64 @main(i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = add i64 %0, %1
  %5 = icmp sge i64 %4, 10
  br i1 %5, label %greater, label %less
greater:
  %6 = sub i64 %4, 5
  store i64 %6, ptr %3
  br label %8
less:
  %7 = add i64 %4, 5
  store i64 %7, ptr %3
  br label %8
8:
  %9 = load i64, ptr %3
  ret i64 %9
}
