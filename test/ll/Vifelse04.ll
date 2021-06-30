@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L2, label %L1
L1:
  %_9 = call i64 @_B_foo (i64 1, i64 1)
  store i64 %_9, i64* %_0
  %_10 = load i64, i64* %_0
  %_11 = call i8* @_bal_alloc (i64 8)
  %_12 = bitcast i8* %_11 to i64*
  store i64 %_10, i64* %_12, align 8
  %_13 = getelementptr i8, i8* %_11, i64 504403158265495552
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_1
  %_14 = call i64 @_B_foo (i64 1, i64 10)
  store i64 %_14, i64* %_2
  %_15 = load i64, i64* %_2
  %_16 = call i8* @_bal_alloc (i64 8)
  %_17 = bitcast i8* %_16 to i64*
  store i64 %_15, i64* %_17, align 8
  %_18 = getelementptr i8, i8* %_16, i64 504403158265495552
  call void @_Bio__println (i8* %_18)
  store i8* null, i8** %_3
  %_19 = call i64 @_B_foo (i64 11, i64 1)
  store i64 %_19, i64* %_4
  %_20 = load i64, i64* %_4
  %_21 = call i8* @_bal_alloc (i64 8)
  %_22 = bitcast i8* %_21 to i64*
  store i64 %_20, i64* %_22, align 8
  %_23 = getelementptr i8, i8* %_21, i64 504403158265495552
  call void @_Bio__println (i8* %_23)
  store i8* null, i8** %_5
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_foo (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i1
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i8
  %_10 = load i8*, i8** @_bal_stack_guard
  %_11 = icmp ult i8* %_9, %_10
  br i1 %_11, label %L6, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_12 = load i64, i64* %x
  %_13 = call i64 @_B_bar (i64 %_12)
  store i64 %_13, i64* %_3
  %_14 = load i64, i64* %y
  %_15 = call i64 @_B_baz (i64 %_14)
  store i64 %_15, i64* %_4
  %_16 = load i64, i64* %_3
  %_17 = load i64, i64* %_4
  %_18 = icmp eq i64 %_16, %_17
  store i1 %_18, i1* %_2
  %_19 = load i1, i1* %_2
  br i1 %_19, label %L2, label %L3
L2:
  ret i64 0
L3:
  %_20 = load i64, i64* %x
  %_21 = call i64 @_B_bar (i64 %_20)
  store i64 %_21, i64* %_6
  %_22 = load i64, i64* %y
  %_23 = call i64 @_B_baz (i64 %_22)
  store i64 %_23, i64* %_7
  %_24 = load i64, i64* %_6
  %_25 = load i64, i64* %_7
  %_26 = icmp sgt i64 %_24, %_25
  store i1 %_26, i1* %_5
  %_27 = load i1, i1* %_5
  br i1 %_27, label %L4, label %L5
L4:
  ret i64 1
L5:
  ret i64 -1
L6:
  call void @_bal_panic (i64 2308)
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
  call void @_bal_panic (i64 5380)
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
  call void @_bal_panic (i64 6404)
  unreachable
}
