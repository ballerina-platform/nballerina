declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = call i64 @_B_mul2 (i64 4, i64 2, i64 3)
  store i64 %_2, i64* %_0, align 8
  %_3 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_3)
  store i1 0, i1* %_1, align 8
  ret void
}
define internal i64 @_B_mul2 (i64 %_0, i64 %_1, i64 %_2) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  store i64 %_2, i64* %z, align 8
  %_9 = load i64, i64* %x, align 8
  %_10 = load i64, i64* %y, align 8
  %_11 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_9, i64 %_10)
  %_12 = extractvalue {i64, i1} %_11, 1
  br i1 %_12, label %L3, label %L2
L1:
  %_20 = load i64, i64* %_8, align 8
  call void @_bal_panic (i64 %_20)
  unreachable
L2:
  %_13 = extractvalue {i64, i1} %_11, 0
  store i64 %_13, i64* %_6, align 8
  %_14 = load i64, i64* %_6, align 8
  %_15 = load i64, i64* %z, align 8
  %_16 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_14, i64 %_15)
  %_17 = extractvalue {i64, i1} %_16, 1
  br i1 %_17, label %L5, label %L4
L3:
  store i64 1, i64* %_8, align 8
  br label %L1
L4:
  %_18 = extractvalue {i64, i1} %_16, 0
  store i64 %_18, i64* %_7, align 8
  %_19 = load i64, i64* %_7, align 8
  ret i64 %_19
L5:
  store i64 1, i64* %_8, align 8
  br label %L1
}
