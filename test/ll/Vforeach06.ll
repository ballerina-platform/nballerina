@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L9, label %L1
L1:
  store i64 6, i64* %i
  br label %L2
L2:
  %_9 = load i64, i64* %i
  %_10 = icmp slt i64 %_9, 10
  store i1 %_10, i1* %_0
  %_11 = load i1, i1* %_0
  br i1 %_11, label %L5, label %L3
L3:
  %_12 = zext i1 0 to i64
  %_13 = or i64 %_12, 72057594037927936
  %_14 = getelementptr i8, i8* null, i64 %_13
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_4
  ret void
L4:
  %_15 = load i64, i64* %i
  %_16 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_15, i64 1)
  %_17 = extractvalue {i64, i1} %_16, 1
  br i1 %_17, label %L11, label %L10
L5:
  %_19 = load i64, i64* %i
  %_20 = call i8* @_bal_alloc (i64 8)
  %_21 = bitcast i8* %_20 to i64*
  store i64 %_19, i64* %_21, align 8
  %_22 = getelementptr i8, i8* %_20, i64 504403158265495552
  call void @_Bio__println (i8* %_22)
  store i8* null, i8** %_1
  %_23 = load i64, i64* %i
  %_24 = icmp eq i64 %_23, 6
  store i1 %_24, i1* %_2
  %_25 = load i1, i1* %_2
  br i1 %_25, label %L6, label %L7
L6:
  br label %L4
L7:
  %_26 = zext i1 1 to i64
  %_27 = or i64 %_26, 72057594037927936
  %_28 = getelementptr i8, i8* null, i64 %_27
  call void @_Bio__println (i8* %_28)
  store i8* null, i8** %_3
  ret void
L8:
  %_29 = load i64, i64* %_5
  call void @_bal_panic (i64 %_29)
  unreachable
L9:
  call void @_bal_panic (i64 772)
  unreachable
L10:
  %_18 = extractvalue {i64, i1} %_16, 0
  store i64 %_18, i64* %i
  br label %L2
L11:
  store i64 1, i64* %_5
  br label %L8
}
