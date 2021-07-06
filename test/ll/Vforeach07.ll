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
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L9, label %L1
L1:
  store i64 6, i64* %i
  br label %L2
L2:
  %_8 = load i64, i64* %i
  %_9 = icmp slt i64 %_8, 10
  store i1 %_9, i1* %_0
  %_10 = load i1, i1* %_0
  br i1 %_10, label %L5, label %L3
L3:
  %_11 = zext i1 1 to i64
  %_12 = or i64 %_11, 72057594037927936
  %_13 = getelementptr i8, i8* null, i64 %_12
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_3
  ret void
L4:
  %_14 = load i64, i64* %i
  %_15 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_14, i64 1)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L11, label %L10
L5:
  %_18 = load i64, i64* %i
  %_19 = call i8* @_bal_alloc (i64 8)
  %_20 = bitcast i8* %_19 to i64*
  store i64 %_18, i64* %_20, align 8
  %_21 = getelementptr i8, i8* %_19, i64 504403158265495552
  call void @_Bio__println (i8* %_21)
  store i8* null, i8** %_1
  %_22 = load i64, i64* %i
  %_23 = icmp eq i64 %_22, 8
  store i1 %_23, i1* %_2
  %_24 = load i1, i1* %_2
  br i1 %_24, label %L6, label %L7
L6:
  br label %L3
L7:
  br label %L4
L8:
  %_25 = load i64, i64* %_4
  call void @_bal_panic (i64 %_25)
  unreachable
L9:
  call void @_bal_panic (i64 772)
  unreachable
L10:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %i
  br label %L2
L11:
  store i64 1, i64* %_4
  br label %L8
}
