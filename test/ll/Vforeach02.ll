@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define internal i64 @_B_lower () {
  %u = alloca i64
  %_0 = alloca i8*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 2, i64* %u
  %_4 = load i64, i64* %u
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 %_4, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 504403158265495552
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_0
  %_8 = load i64, i64* %u
  ret i64 %_8
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_upper () {
  %u = alloca i64
  %_0 = alloca i8*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 5, i64* %u
  %_4 = load i64, i64* %u
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 %_4, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 504403158265495552
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_0
  %_8 = load i64, i64* %u
  ret i64 %_8
L2:
  call void @_bal_panic (i64 2308)
  unreachable
}
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %i = alloca i64
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L7, label %L1
L1:
  %_8 = call i64 @_B_lower ()
  store i64 %_8, i64* %_0
  %_9 = call i64 @_B_upper ()
  store i64 %_9, i64* %_1
  %_10 = load i64, i64* %_0
  store i64 %_10, i64* %i
  br label %L2
L2:
  %_11 = load i64, i64* %i
  %_12 = load i64, i64* %_1
  %_13 = icmp slt i64 %_11, %_12
  store i1 %_13, i1* %_2
  %_14 = load i1, i1* %_2
  br i1 %_14, label %L5, label %L3
L3:
  ret void
L4:
  %_15 = load i64, i64* %i
  %_16 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_15, i64 1)
  %_17 = extractvalue {i64, i1} %_16, 1
  br i1 %_17, label %L9, label %L8
L5:
  %_19 = load i64, i64* %i
  %_20 = call i8* @_bal_alloc (i64 8)
  %_21 = bitcast i8* %_20 to i64*
  store i64 %_19, i64* %_21, align 8
  %_22 = getelementptr i8, i8* %_20, i64 504403158265495552
  call void @_Bio__println (i8* %_22)
  store i8* null, i8** %_3
  br label %L4
L6:
  %_23 = load i64, i64* %_4
  call void @_bal_panic (i64 %_23)
  unreachable
L7:
  call void @_bal_panic (i64 3844)
  unreachable
L8:
  %_18 = extractvalue {i64, i1} %_16, 0
  store i64 %_18, i64* %i
  br label %L2
L9:
  store i64 1, i64* %_4
  br label %L6
}
