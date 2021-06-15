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
  store i64 %_0, i64* %maxExclusive, align 8
  store i64 0, i64* %i, align 8
  br label %L1
L1:
  %_4 = load i64, i64* %i, align 8
  %_5 = load i64, i64* %maxExclusive, align 8
  %_6 = icmp slt i64 %_4, %_5
  store i1 %_6, i1* %_1, align 8
  %_7 = load i1, i1* %_1, align 8
  br i1 %_7, label %L3, label %L2
L2:
  ret void
L3:
  %_8 = load i64, i64* %i, align 8
  call void @_Bio__println (i64 %_8)
  store i1 0, i1* %_2, align 8
  %_9 = load i64, i64* %i, align 8
  %_10 = call i64 @_B_increase (i64 %_9)
  store i64 %_10, i64* %_3, align 8
  %_11 = load i64, i64* %_3, align 8
  store i64 %_11, i64* %i, align 8
  br label %L1
}
define internal i64 @_B_increase (i64 %_0) {
  %x = alloca i64, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  %_3 = load i64, i64* %x, align 8
  %_4 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_3, i64 1)
  %_5 = extractvalue {i64, i1} %_4, 1
  br i1 %_5, label %L3, label %L2
L1:
  %_8 = load i64, i64* %_2, align 8
  call void @_bal_panic (i64 %_8)
  unreachable
L2:
  %_6 = extractvalue {i64, i1} %_4, 0
  store i64 %_6, i64* %_1, align 8
  %_7 = load i64, i64* %_1, align 8
  ret i64 %_7
L3:
  store i64 1, i64* %_2, align 8
  br label %L1
}
