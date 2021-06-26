@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %INT_MIN = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8*
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L3, label %L1
L1:
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -9223372036854775807, i64 1)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_19 = load i64, i64* %_5
  call void @_bal_panic (i64 %_19)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_1
  %_12 = load i64, i64* %_1
  store i64 %_12, i64* %INT_MIN
  %_13 = load i64, i64* %INT_MIN
  %_14 = call i64 @_B_div (i64 %_13, i64 -1)
  store i64 %_14, i64* %_3
  %_15 = load i64, i64* %_3
  %_16 = call i8* @_bal_alloc (i64 8)
  %_17 = bitcast i8* %_16 to i64*
  store i64 %_15, i64* %_17, align 8
  %_18 = getelementptr i8, i8* %_16, i64 144115188075855872
  call void @_Bio__println (i8* %_18)
  store i8* null, i8** %_4
  ret void
L5:
  store i64 1, i64* %_5
  br label %L2
}
define internal i64 @_B_div (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_7 = load i64, i64* %x
  %_8 = load i64, i64* %y
  %_9 = icmp eq i64 %_8, 0
  br i1 %_9, label %L4, label %L5
L2:
  %_15 = load i64, i64* %_3
  call void @_bal_panic (i64 %_15)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  store i64 2, i64* %_3
  br label %L2
L5:
  %_10 = icmp eq i64 %_7, -9223372036854775808
  %_11 = icmp eq i64 %_8, -1
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %L7, label %L6
L6:
  %_13 = sdiv i64 %_7, %_8
  store i64 %_13, i64* %_2
  %_14 = load i64, i64* %_2
  ret i64 %_14
L7:
  store i64 1, i64* %_3
  br label %L2
}
