declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = call i64 @_B_getArg1 ()
  store i64 %_4, i64* %_0, align 8
  %_5 = call i64 @_B_getArg2 ()
  store i64 %_5, i64* %_1, align 8
  %_6 = load i64, i64* %_0, align 8
  %_7 = load i64, i64* %_1, align 8
  %_8 = call i64 @_B_foo (i64 %_6, i64 %_7)
  store i64 %_8, i64* %_2, align 8
  %_9 = load i64, i64* %_2, align 8
  call void @_Bio__println (i64 %_9)
  store i1 0, i1* %_3, align 8
  ret void
}
define internal i64 @_B_foo (i64 %_0, i64 %_1) {
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %i, align 8
  store i64 %_1, i64* %j, align 8
  %_4 = load i64, i64* %i, align 8
  %_5 = load i64, i64* %j, align 8
  %_6 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_4, i64 %_5)
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
define internal i64 @_B_getArg1 () {
  ret i64 2
}
define internal i64 @_B_getArg2 () {
  ret i64 4
}
