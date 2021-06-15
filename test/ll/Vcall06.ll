declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i1, align 8
  %_6 = call i64 @_B_foobar ()
  store i64 %_6, i64* %_0, align 8
  %_7 = load i64, i64* %_0, align 8
  %_8 = call i64 @_B_sum (i64 23, i64 %_7)
  store i64 %_8, i64* %_1, align 8
  %_9 = load i64, i64* %_1, align 8
  %_10 = call i64 @_B_baz (i64 %_9)
  store i64 %_10, i64* %_2, align 8
  %_11 = load i64, i64* %_2, align 8
  %_12 = call i64 @_B_bar (i64 %_11)
  store i64 %_12, i64* %_3, align 8
  %_13 = load i64, i64* %_3, align 8
  %_14 = call i64 @_B_foo (i64 %_13)
  store i64 %_14, i64* %_4, align 8
  %_15 = load i64, i64* %_4, align 8
  call void @_Bio__println (i64 %_15)
  store i1 0, i1* %_5, align 8
  ret void
}
define internal i64 @_B_foo (i64 %_0) {
  %x = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  %_1 = load i64, i64* %x, align 8
  ret i64 %_1
}
define internal i64 @_B_bar (i64 %_0) {
  %x = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  %_1 = load i64, i64* %x, align 8
  ret i64 %_1
}
define internal i64 @_B_baz (i64 %_0) {
  %x = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  %_1 = load i64, i64* %x, align 8
  ret i64 %_1
}
define internal i64 @_B_foobar () {
  ret i64 12
}
define internal i64 @_B_sum (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_4 = load i64, i64* %x, align 8
  %_5 = load i64, i64* %y, align 8
  %_6 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_4, i64 %_5)
  %_7 = extractvalue {i64, i1} %_6, 1
  br i1 %_7, label %L3, label %L2
L1:
  %_10 = load i64, i64* %_3, align 8
  call void @_bal_panic (i64 %_10)
  unreachable
L2:
  %_8 = extractvalue {i64, i1} %_6, 0
  store i64 %_8, i64* %_2, align 8
  %_9 = load i64, i64* %_2, align 8
  ret i64 %_9
L3:
  store i64 1, i64* %_3, align 8
  br label %L1
}
