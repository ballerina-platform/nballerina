@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i64
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L8, label %L1
L1:
  store i64 0, i64* %i
  br label %L2
L2:
  %_8 = load i64, i64* %i
  %_9 = icmp slt i64 %_8, 4
  store i1 %_9, i1* %_0
  %_10 = load i1, i1* %_0
  br i1 %_10, label %L4, label %L3
L3:
  ret void
L4:
  %_11 = load i64, i64* %i
  %_12 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_11, i64 1)
  %_13 = extractvalue {i64, i1} %_12, 1
  br i1 %_13, label %L10, label %L9
L5:
  br label %L2
L6:
  %_19 = load i64, i64* %i
  %_20 = call i8* @_bal_alloc (i64 8)
  %_21 = bitcast i8* %_20 to i64*
  store i64 %_19, i64* %_21, align 8
  %_22 = getelementptr i8, i8* %_20, i64 504403158265495552
  call void @_Bio__println (i8* %_22)
  store i8* null, i8** %_3
  br label %L2
L7:
  %_23 = load i64, i64* %_4
  call void @_bal_panic (i64 %_23)
  unreachable
L8:
  call void @_bal_panic (i64 772)
  unreachable
L9:
  %_14 = extractvalue {i64, i1} %_12, 0
  store i64 %_14, i64* %_1
  %_15 = load i64, i64* %_1
  store i64 %_15, i64* %i
  %_16 = load i64, i64* %i
  %_17 = icmp eq i64 %_16, 2
  store i1 %_17, i1* %_2
  %_18 = load i1, i1* %_2
  br i1 %_18, label %L5, label %L6
L10:
  store i64 1537, i64* %_4
  br label %L7
}
