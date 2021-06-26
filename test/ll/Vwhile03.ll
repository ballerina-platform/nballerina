@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %j = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L9, label %L1
L1:
  store i64 0, i64* %i
  br label %L2
L2:
  %_9 = load i64, i64* %i
  %_10 = icmp slt i64 %_9, 5
  store i1 %_10, i1* %_0
  %_11 = load i1, i1* %_0
  br i1 %_11, label %L4, label %L3
L3:
  ret void
L4:
  store i64 0, i64* %j
  br label %L5
L5:
  %_12 = load i64, i64* %j
  %_13 = load i64, i64* %i
  %_14 = icmp slt i64 %_12, %_13
  store i1 %_14, i1* %_1
  %_15 = load i1, i1* %_1
  br i1 %_15, label %L7, label %L6
L6:
  %_16 = load i64, i64* %i
  %_17 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_16, i64 1)
  %_18 = extractvalue {i64, i1} %_17, 1
  br i1 %_18, label %L11, label %L10
L7:
  %_21 = load i64, i64* %j
  %_22 = call i8* @_bal_alloc (i64 8)
  %_23 = bitcast i8* %_22 to i64*
  store i64 %_21, i64* %_23, align 8
  %_24 = getelementptr i8, i8* %_22, i64 144115188075855872
  call void @_Bio__println (i8* %_24)
  store i8* null, i8** %_2
  %_25 = load i64, i64* %j
  %_26 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_25, i64 1)
  %_27 = extractvalue {i64, i1} %_26, 1
  br i1 %_27, label %L13, label %L12
L8:
  %_30 = load i64, i64* %_5
  call void @_bal_panic (i64 %_30)
  unreachable
L9:
  call void @_bal_panic (i64 4)
  unreachable
L10:
  %_19 = extractvalue {i64, i1} %_17, 0
  store i64 %_19, i64* %_4
  %_20 = load i64, i64* %_4
  store i64 %_20, i64* %i
  br label %L2
L11:
  store i64 1, i64* %_5
  br label %L8
L12:
  %_28 = extractvalue {i64, i1} %_26, 0
  store i64 %_28, i64* %_3
  %_29 = load i64, i64* %_3
  store i64 %_29, i64* %j
  br label %L5
L13:
  store i64 1, i64* %_5
  br label %L8
}
