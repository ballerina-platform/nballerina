@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  call void @_B_foo (i64 0, i64 5)
  store i8* null, i8** %_0
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_inc (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L3, label %L1
L1:
  store i64 %_0, i64* %n
  %_6 = load i64, i64* %n
  %_7 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_6, i64 1)
  %_8 = extractvalue {i64, i1} %_7, 1
  br i1 %_8, label %L5, label %L4
L2:
  %_11 = load i64, i64* %_2
  call void @_bal_panic (i64 %_11)
  unreachable
L3:
  call void @_bal_panic (i64 3076)
  unreachable
L4:
  %_9 = extractvalue {i64, i1} %_7, 0
  store i64 %_9, i64* %_1
  %_10 = load i64, i64* %_1
  ret i64 %_10
L5:
  store i64 3329, i64* %_2
  br label %L2
}
define internal void @_B_foo (i64 %_0, i64 %_1) {
  %depth = alloca i64
  %maxDepth = alloca i64
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i8*
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i64
  %_8 = alloca i8
  %_9 = load i8*, i8** @_bal_stack_guard
  %_10 = icmp ult i8* %_8, %_9
  br i1 %_10, label %L5, label %L1
L1:
  store i64 %_0, i64* %depth
  store i64 %_1, i64* %maxDepth
  %_11 = load i64, i64* %depth
  %_12 = load i64, i64* %maxDepth
  %_13 = icmp eq i64 %_11, %_12
  store i1 %_13, i1* %_2
  %_14 = load i1, i1* %_2
  br i1 %_14, label %L2, label %L3
L2:
  ret void
L3:
  %_15 = load i64, i64* %depth
  %_16 = call i64 @_B_inc (i64 %_15)
  store i64 %_16, i64* %_3
  %_17 = load i64, i64* %_3
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 %_17, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 504403158265495552
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_4
  %_21 = load i64, i64* %depth
  %_22 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_21, i64 1)
  %_23 = extractvalue {i64, i1} %_22, 1
  br i1 %_23, label %L7, label %L6
L4:
  %_27 = load i64, i64* %_7
  call void @_bal_panic (i64 %_27)
  unreachable
L5:
  call void @_bal_panic (i64 4100)
  unreachable
L6:
  %_24 = extractvalue {i64, i1} %_22, 0
  store i64 %_24, i64* %_5
  %_25 = load i64, i64* %_5
  %_26 = load i64, i64* %maxDepth
  call void @_B_foo (i64 %_25, i64 %_26)
  store i8* null, i8** %_6
  ret void
L7:
  store i64 5377, i64* %_7
  br label %L4
}
