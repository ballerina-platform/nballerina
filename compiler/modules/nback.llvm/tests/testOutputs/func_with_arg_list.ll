define i64 @foo1 (i64 %_0) {
  %_1 = alloca i64, align 8
  store i64 %_0, i64* %_1, align 8
  %_2 = load i64, i64* %_1, align 8
  ret i64 %_2
}
define i64 @foo2 (i64 %_0, i64 %_1) {
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %_2, align 8
  store i64 %_1, i64* %_3, align 8
  %_4 = load i64, i64* %_3, align 8
  ret i64 %_4
}
define i64 @foo3 (i64 %_0, i64 %_1, i64 %_2) {
  %_3 = alloca i64, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  store i64 %_0, i64* %_3, align 8
  store i64 %_1, i64* %_4, align 8
  store i64 %_2, i64* %_5, align 8
  %_6 = load i64, i64* %_5, align 8
  ret i64 %_6
}
