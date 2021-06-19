declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %i = alloca i64, align 8
  %_0 = alloca i1, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  store i64 0, i64* %i, align 8
  br label %L1
L1:
  %_5 = load i64, i64* %i, align 8
  %_6 = icmp slt i64 %_5, 4
  store i1 %_6, i1* %_0, align 8
  %_7 = load i1, i1* %_0, align 8
  br i1 %_7, label %L3, label %L2
L2:
  ret void
L3:
  %_8 = load i64, i64* %i, align 8
  %_9 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_8, i64 1)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L8, label %L7
L4:
  br label %L1
L5:
  %_16 = load i64, i64* %i, align 8
  call void @_Bio__println (i64 %_16)
  store i1 0, i1* %_3, align 8
  br label %L1
L6:
  %_17 = load i64, i64* %_4, align 8
  call void @_bal_panic (i64 %_17)
  unreachable
L7:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_1, align 8
  %_12 = load i64, i64* %_1, align 8
  store i64 %_12, i64* %i, align 8
  %_13 = load i64, i64* %i, align 8
  %_14 = icmp eq i64 %_13, 2
  store i1 %_14, i1* %_2, align 8
  %_15 = load i1, i1* %_2, align 8
  br i1 %_15, label %L4, label %L5
L8:
  store i64 1, i64* %_4, align 8
  br label %L6
}
