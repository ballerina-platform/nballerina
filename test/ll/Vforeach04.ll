@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L9, label %L1
L1:
  store i64 6, i64* %i
  br label %L2
L2:
  %_7 = load i64, i64* %i
  %_8 = icmp slt i64 %_7, 10
  store i1 %_8, i1* %_0
  %_9 = load i1, i1* %_0
  br i1 %_9, label %L5, label %L3
L3:
  ret void
L4:
  %_10 = load i64, i64* %i
  %_11 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_10, i64 1)
  %_12 = extractvalue {i64, i1} %_11, 1
  br i1 %_12, label %L11, label %L10
L5:
  %_14 = load i64, i64* %i
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 %_14, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 504403158265495552
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_1
  %_18 = load i64, i64* %i
  %_19 = icmp eq i64 %_18, 8
  store i1 %_19, i1* %_2
  %_20 = load i1, i1* %_2
  br i1 %_20, label %L6, label %L7
L6:
  br label %L4
L7:
  br label %L4
L8:
  %_21 = load i64, i64* %_3
  call void @_bal_panic (i64 %_21)
  unreachable
L9:
  call void @_bal_panic (i64 772)
  unreachable
L10:
  %_13 = extractvalue {i64, i1} %_11, 0
  store i64 %_13, i64* %i
  br label %L2
L11:
  store i64 1, i64* %_3
  br label %L8
}
