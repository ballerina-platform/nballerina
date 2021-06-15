declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = call i64 @_B_mul (i64 4, i64 2)
  store i64 %_2, i64* %_0, align 8
  %_3 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_3)
  store i1 0, i1* %_1, align 8
  ret void
}
define internal i64 @_B_mul (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_6 = load i64, i64* %x, align 8
  %_7 = load i64, i64* %y, align 8
  %_8 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_6, i64 %_7)
  %_9 = extractvalue {i64, i1} %_8, 1
  br i1 %_9, label %L3, label %L2
L1:
  %_12 = load i64, i64* %_5, align 8
  call void @_bal_panic (i64 %_12)
  unreachable
L2:
  %_10 = extractvalue {i64, i1} %_8, 0
  store i64 %_10, i64* %_4, align 8
  %_11 = load i64, i64* %_4, align 8
  ret i64 %_11
L3:
  store i64 1, i64* %_5, align 8
  br label %L1
}
