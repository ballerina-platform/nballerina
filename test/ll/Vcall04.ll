@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L2, label %L1
L1:
  %_7 = call i64 @_B_foo (i64 13, i1 0)
  store i64 %_7, i64* %_0
  %_8 = load i64, i64* %_0
  %_9 = call i8* @_bal_alloc (i64 8)
  %_10 = bitcast i8* %_9 to i64*
  store i64 %_8, i64* %_10, align 8
  %_11 = getelementptr i8, i8* %_9, i64 504403158265495552
  call void @_Bio__println (i8* %_11)
  store i8* null, i8** %_1
  %_12 = call i64 @_B_foo (i64 14, i1 1)
  store i64 %_12, i64* %_2
  %_13 = load i64, i64* %_2
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 %_13, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 504403158265495552
  call void @_Bio__println (i8* %_16)
  store i8* null, i8** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_foo (i64 %_0, i1 %_1) {
  %i = alloca i64
  %b = alloca i1
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L5, label %L1
L1:
  store i64 %_0, i64* %i
  store i1 %_1, i1* %b
  %_8 = load i1, i1* %b
  br i1 %_8, label %L2, label %L3
L2:
  %_9 = load i64, i64* %i
  %_10 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_9, i64 1)
  %_11 = extractvalue {i64, i1} %_10, 1
  br i1 %_11, label %L7, label %L6
L3:
  %_14 = load i64, i64* %i
  %_15 = icmp eq i64 5, 0
  br i1 %_15, label %L8, label %L9
L4:
  %_21 = load i64, i64* %_4
  call void @_bal_panic (i64 %_21)
  unreachable
L5:
  call void @_bal_panic (i64 2052)
  unreachable
L6:
  %_12 = extractvalue {i64, i1} %_10, 0
  store i64 %_12, i64* %_2
  %_13 = load i64, i64* %_2
  ret i64 %_13
L7:
  store i64 2561, i64* %_4
  br label %L4
L8:
  store i64 3074, i64* %_4
  br label %L4
L9:
  %_16 = icmp eq i64 %_14, -9223372036854775808
  %_17 = icmp eq i64 5, -1
  %_18 = and i1 %_16, %_17
  br i1 %_18, label %L11, label %L10
L10:
  %_19 = srem i64 %_14, 5
  store i64 %_19, i64* %_3
  br label %L12
L11:
  store i64 0, i64* %_3
  br label %L12
L12:
  %_20 = load i64, i64* %_3
  ret i64 %_20
}
