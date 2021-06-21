declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %j = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i64
  store i64 0, i64* %i
  br label %L1
L1:
  %_6 = load i64, i64* %i
  %_7 = icmp slt i64 %_6, 5
  store i1 %_7, i1* %_0
  %_8 = load i1, i1* %_0
  br i1 %_8, label %L3, label %L2
L2:
  ret void
L3:
  store i64 0, i64* %j
  br label %L4
L4:
  %_9 = load i64, i64* %j
  %_10 = load i64, i64* %i
  %_11 = icmp slt i64 %_9, %_10
  store i1 %_11, i1* %_1
  %_12 = load i1, i1* %_1
  br i1 %_12, label %L6, label %L5
L5:
  %_13 = load i64, i64* %i
  %_14 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_13, i64 1)
  %_15 = extractvalue {i64, i1} %_14, 1
  br i1 %_15, label %L9, label %L8
L6:
  %_18 = load i64, i64* %j
  call void @_Bio__println (i64 %_18)
  store i8* null, i8** %_2
  %_19 = load i64, i64* %j
  %_20 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_19, i64 1)
  %_21 = extractvalue {i64, i1} %_20, 1
  br i1 %_21, label %L11, label %L10
L7:
  %_24 = load i64, i64* %_5
  call void @_bal_panic (i64 %_24)
  unreachable
L8:
  %_16 = extractvalue {i64, i1} %_14, 0
  store i64 %_16, i64* %_4
  %_17 = load i64, i64* %_4
  store i64 %_17, i64* %i
  br label %L1
L9:
  store i64 1, i64* %_5
  br label %L7
L10:
  %_22 = extractvalue {i64, i1} %_20, 0
  store i64 %_22, i64* %_3
  %_23 = load i64, i64* %_3
  store i64 %_23, i64* %j
  br label %L4
L11:
  store i64 1, i64* %_5
  br label %L7
}
