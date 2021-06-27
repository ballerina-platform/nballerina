@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L2, label %L1
L1:
  %_9 = call i64 @_B_foobar ()
  store i64 %_9, i64* %_0
  %_10 = load i64, i64* %_0
  %_11 = call i64 @_B_sum (i64 23, i64 %_10)
  store i64 %_11, i64* %_1
  %_12 = load i64, i64* %_1
  %_13 = call i64 @_B_baz (i64 %_12)
  store i64 %_13, i64* %_2
  %_14 = load i64, i64* %_2
  %_15 = call i64 @_B_bar (i64 %_14)
  store i64 %_15, i64* %_3
  %_16 = load i64, i64* %_3
  %_17 = call i64 @_B_foo (i64 %_16)
  store i64 %_17, i64* %_4
  %_18 = load i64, i64* %_4
  %_19 = call i8* @_bal_alloc (i64 8)
  %_20 = bitcast i8* %_19 to i64*
  store i64 %_18, i64* %_20, align 8
  %_21 = getelementptr i8, i8* %_19, i64 144115188075855872
  call void @_Bio__println (i8* %_21)
  store i8* null, i8** %_5
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_foo (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %x
  %_4 = load i64, i64* %x
  ret i64 %_4
L2:
  call void @_bal_panic (i64 1796)
  unreachable
}
define internal i64 @_B_bar (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %x
  %_4 = load i64, i64* %x
  ret i64 %_4
L2:
  call void @_bal_panic (i64 2820)
  unreachable
}
define internal i64 @_B_baz (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %x
  %_4 = load i64, i64* %x
  ret i64 %_4
L2:
  call void @_bal_panic (i64 3844)
  unreachable
}
define internal i64 @_B_foobar () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i64 12
L2:
  call void @_bal_panic (i64 4868)
  unreachable
}
define internal i64 @_B_sum (i64 %_0, i64 %_1) {
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
  %_9 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 5892)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 6145, i64* %_3
  br label %L2
}
