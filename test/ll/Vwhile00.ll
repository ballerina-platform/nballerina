declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  call void @_B_printInts (i64 5)
  store i1 0, i1* %_0, align 8
  ret void
}
define internal void @_B_printInts (i64 %_0) {
  %maxExclusive = alloca i64, align 8
  %i = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i64, align 8
  %_4 = alloca i64, align 8
  store i64 %_0, i64* %maxExclusive, align 8
  store i64 0, i64* %i, align 8
  br label %L1
L1:
  %_5 = load i64, i64* %i, align 8
  %_6 = load i64, i64* %maxExclusive, align 8
  %_7 = icmp slt i64 %_5, %_6
  store i1 %_7, i1* %_1, align 8
  %_8 = load i1, i1* %_1, align 8
  br i1 %_8, label %L3, label %L2
L2:
  ret void
L3:
  %_9 = load i64, i64* %i, align 8
  call void @_Bio__println (i64 %_9)
  store i1 0, i1* %_2, align 8
  %_10 = load i64, i64* %i, align 8
  %_11 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_10, i64 1)
  %_12 = extractvalue {i64, i1} %_11, 1
  br i1 %_12, label %L6, label %L5
L4:
  %_15 = load i64, i64* %_4, align 8
  call void @_bal_panic (i64 %_15)
  unreachable
L5:
  %_13 = extractvalue {i64, i1} %_11, 0
  store i64 %_13, i64* %_3, align 8
  %_14 = load i64, i64* %_3, align 8
  store i64 %_14, i64* %i, align 8
  br label %L1
L6:
  store i64 1, i64* %_4, align 8
  br label %L4
}
