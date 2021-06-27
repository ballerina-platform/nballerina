@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i1
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i8*
  %_8 = alloca i1
  %_9 = alloca i8*
  %_10 = alloca i1
  %_11 = alloca i8*
  %_12 = alloca i1
  %_13 = alloca i8*
  %_14 = alloca i8
  %_15 = load i8*, i8** @_bal_stack_guard
  %_16 = icmp ult i8* %_14, %_15
  br i1 %_16, label %L2, label %L1
L1:
  %_17 = call i1 @_B_greaterThan (i1 1, i1 0)
  store i1 %_17, i1* %_0
  %_18 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_18)
  store i8* null, i8** %_1
  %_19 = call i1 @_B_greaterThan (i1 1, i1 1)
  store i1 %_19, i1* %_2
  %_20 = load i1, i1* %_2
  call void @_B_printBoolean (i1 %_20)
  store i8* null, i8** %_3
  %_21 = call i1 @_B_greaterThan (i1 0, i1 0)
  store i1 %_21, i1* %_4
  %_22 = load i1, i1* %_4
  call void @_B_printBoolean (i1 %_22)
  store i8* null, i8** %_5
  %_23 = call i1 @_B_lessThan (i1 1, i1 0)
  store i1 %_23, i1* %_6
  %_24 = load i1, i1* %_6
  call void @_B_printBoolean (i1 %_24)
  store i8* null, i8** %_7
  %_25 = call i1 @_B_lessThan (i1 0, i1 1)
  store i1 %_25, i1* %_8
  %_26 = load i1, i1* %_8
  call void @_B_printBoolean (i1 %_26)
  store i8* null, i8** %_9
  %_27 = call i1 @_B_lessThan (i1 1, i1 1)
  store i1 %_27, i1* %_10
  %_28 = load i1, i1* %_10
  call void @_B_printBoolean (i1 %_28)
  store i8* null, i8** %_11
  %_29 = call i1 @_B_lessThan (i1 0, i1 0)
  store i1 %_29, i1* %_12
  %_30 = load i1, i1* %_12
  call void @_B_printBoolean (i1 %_30)
  store i8* null, i8** %_13
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L5, label %L1
L1:
  store i1 %_0, i1* %b
  %_6 = load i1, i1* %b
  br i1 %_6, label %L2, label %L3
L2:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 1, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 144115188075855872
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_1
  br label %L4
L3:
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 0, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 144115188075855872
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_2
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 3332)
  unreachable
}
define internal i1 @_B_lessThan (i1 %_0, i1 %_1) {
  %x = alloca i1
  %y = alloca i1
  %_2 = alloca i1
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  store i1 %_0, i1* %x
  store i1 %_1, i1* %y
  %_6 = load i1, i1* %x
  %_7 = load i1, i1* %y
  %_8 = icmp ult i1 %_6, %_7
  store i1 %_8, i1* %_2
  %_9 = load i1, i1* %_2
  ret i1 %_9
L2:
  call void @_bal_panic (i64 5636)
  unreachable
}
define internal i1 @_B_greaterThan (i1 %_0, i1 %_1) {
  %x = alloca i1
  %y = alloca i1
  %_2 = alloca i1
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  store i1 %_0, i1* %x
  store i1 %_1, i1* %y
  %_6 = load i1, i1* %x
  %_7 = load i1, i1* %y
  %_8 = icmp ugt i1 %_6, %_7
  store i1 %_8, i1* %_2
  %_9 = load i1, i1* %_2
  ret i1 %_9
L2:
  call void @_bal_panic (i64 6660)
  unreachable
}
