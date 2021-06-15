declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %i = alloca i64, align 8
  %_1 = alloca i1, align 8
  %j = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i64, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i64, align 8
  store i64 0, i64* %i, align 8
  br label %L1
L1:
  %_8 = load i64, i64* %i, align 8
  %_9 = icmp slt i64 %_8, 5
  store i1 %_9, i1* %_1, align 8
  %_10 = load i1, i1* %_1, align 8
  br i1 %_10, label %L3, label %L2
L2:
  ret void
L3:
  store i64 0, i64* %j, align 8
  br label %L4
L4:
  %_11 = load i64, i64* %j, align 8
  %_12 = load i64, i64* %i, align 8
  %_13 = icmp slt i64 %_11, %_12
  store i1 %_13, i1* %_3, align 8
  %_14 = load i1, i1* %_3, align 8
  br i1 %_14, label %L6, label %L5
L5:
  %_15 = load i64, i64* %i, align 8
  %_16 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_15, i64 1)
  %_17 = extractvalue {i64, i1} %_16, 1
  br i1 %_17, label %L9, label %L8
L6:
  %_20 = load i64, i64* %j, align 8
  call void @_Bio__println (i64 %_20)
  store i1 0, i1* %_4, align 8
  %_21 = load i64, i64* %j, align 8
  %_22 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_21, i64 1)
  %_23 = extractvalue {i64, i1} %_22, 1
  br i1 %_23, label %L11, label %L10
L7:
  %_26 = load i64, i64* %_7, align 8
  call void @_bal_panic (i64 %_26)
  unreachable
L8:
  %_18 = extractvalue {i64, i1} %_16, 0
  store i64 %_18, i64* %_6, align 8
  %_19 = load i64, i64* %_6, align 8
  store i64 %_19, i64* %i, align 8
  br label %L1
L9:
  store i64 1, i64* %_7, align 8
  br label %L7
L10:
  %_24 = extractvalue {i64, i1} %_22, 0
  store i64 %_24, i64* %_5, align 8
  %_25 = load i64, i64* %_5, align 8
  store i64 %_25, i64* %j, align 8
  br label %L4
L11:
  store i64 1, i64* %_7, align 8
  br label %L7
}
