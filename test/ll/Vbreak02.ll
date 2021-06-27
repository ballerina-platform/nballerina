@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i1
  %_4 = alloca i1
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L10, label %L1
L1:
  store i64 0, i64* %i
  br label %L2
L2:
  %_9 = load i64, i64* %i
  %_10 = icmp sge i64 %_9, 0
  store i1 %_10, i1* %_0
  %_11 = load i1, i1* %_0
  br i1 %_11, label %L4, label %L3
L3:
  ret void
L4:
  %_12 = load i64, i64* %i
  %_13 = call i8* @_bal_alloc (i64 8)
  %_14 = bitcast i8* %_13 to i64*
  store i64 %_12, i64* %_14, align 8
  %_15 = getelementptr i8, i8* %_13, i64 144115188075855872
  call void @_Bio__println (i8* %_15)
  store i8* null, i8** %_1
  %_16 = load i64, i64* %i
  %_17 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_16, i64 1)
  %_18 = extractvalue {i64, i1} %_17, 1
  br i1 %_18, label %L12, label %L11
L5:
  %_24 = load i64, i64* %i
  %_25 = icmp eq i64 %_24, 4
  store i1 %_25, i1* %_4
  %_26 = load i1, i1* %_4
  br i1 %_26, label %L6, label %L7
L6:
  br label %L3
L7:
  br label %L8
L8:
  br label %L2
L9:
  %_27 = load i64, i64* %_5
  call void @_bal_panic (i64 %_27)
  unreachable
L10:
  call void @_bal_panic (i64 772)
  unreachable
L11:
  %_19 = extractvalue {i64, i1} %_17, 0
  store i64 %_19, i64* %_2
  %_20 = load i64, i64* %_2
  store i64 %_20, i64* %i
  %_21 = load i64, i64* %i
  %_22 = icmp sge i64 %_21, 1
  store i1 %_22, i1* %_3
  %_23 = load i1, i1* %_3
  br i1 %_23, label %L5, label %L8
L12:
  store i64 2817, i64* %_5
  br label %L9
}
