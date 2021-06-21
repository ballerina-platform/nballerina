declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  call void @_B_printIfBetween (i64 6, i64 5, i64 7)
  store i8* null, i8** %_0
  call void @_B_printIfBetween (i64 1, i64 2, i64 3)
  store i8* null, i8** %_1
  call void @_B_printIfBetween (i64 0, i64 -1, i64 4)
  store i8* null, i8** %_3
  ret void
}
define internal void @_B_printIfBetween (i64 %_0, i64 %_1, i64 %_2) {
  %n = alloca i64
  %min = alloca i64
  %max = alloca i64
  %i = alloca i64
  %_3 = alloca i1
  %_4 = alloca i1
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i64
  store i64 %_0, i64* %n
  store i64 %_1, i64* %min
  store i64 %_2, i64* %max
  %_8 = load i64, i64* %min
  store i64 %_8, i64* %i
  br label %L1
L1:
  %_9 = load i64, i64* %i
  %_10 = load i64, i64* %max
  %_11 = icmp sle i64 %_9, %_10
  store i1 %_11, i1* %_3
  %_12 = load i1, i1* %_3
  br i1 %_12, label %L3, label %L2
L2:
  ret void
L3:
  %_13 = load i64, i64* %i
  %_14 = load i64, i64* %n
  %_15 = icmp eq i64 %_13, %_14
  store i1 %_15, i1* %_4
  %_16 = load i1, i1* %_4
  br i1 %_16, label %L4, label %L5
L4:
  %_17 = load i64, i64* %n
  call void @_Bio__println (i64 %_17)
  store i8* null, i8** %_5
  br label %L2
L5:
  %_18 = load i64, i64* %i
  %_19 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_18, i64 1)
  %_20 = extractvalue {i64, i1} %_19, 1
  br i1 %_20, label %L8, label %L7
L6:
  %_23 = load i64, i64* %_7
  call void @_bal_panic (i64 %_23)
  unreachable
L7:
  %_21 = extractvalue {i64, i1} %_19, 0
  store i64 %_21, i64* %_6
  %_22 = load i64, i64* %_6
  store i64 %_22, i64* %i
  br label %L1
L8:
  store i64 1, i64* %_7
  br label %L6
}
