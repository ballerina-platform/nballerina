declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = call i64 @_B_foo (i64 10)
  store i64 %_2, i64* %_0, align 8
  %_3 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_3)
  store i1 0, i1* %_1, align 8
  ret void
}
define internal i64 @_B_foo (i64 %_0) {
  %x = alloca i64, align 8
  %_1 = alloca i64, align 8
  %i = alloca i64, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i64, align 8
  %_4 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  %_5 = load i64, i64* %x, align 8
  %_6 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_5, i64 1)
  %_7 = extractvalue {i64, i1} %_6, 1
  br i1 %_7, label %L5, label %L4
L1:
  %_13 = load i64, i64* %i, align 8
  %_14 = call i64 @_B_foo (i64 %_13)
  store i64 %_14, i64* %_3, align 8
  %_15 = load i64, i64* %_3, align 8
  ret i64 %_15
L2:
  %_16 = load i64, i64* %i, align 8
  ret i64 %_16
L3:
  %_17 = load i64, i64* %_4, align 8
  call void @_bal_panic (i64 %_17)
  unreachable
L4:
  %_8 = extractvalue {i64, i1} %_6, 0
  store i64 %_8, i64* %_1, align 8
  %_9 = load i64, i64* %_1, align 8
  store i64 %_9, i64* %i, align 8
  %_10 = load i64, i64* %i, align 8
  %_11 = icmp ne i64 %_10, 0
  store i1 %_11, i1* %_2, align 8
  %_12 = load i1, i1* %_2, align 8
  br i1 %_12, label %L1, label %L2
L5:
  store i64 1, i64* %_4, align 8
  br label %L3
}
