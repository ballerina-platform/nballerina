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
  %_9 = call i64 @_B_mod (i64 5, i64 3)
  store i64 %_9, i64* %_0
  %_10 = load i64, i64* %_0
  %_11 = call i8* @_bal_alloc (i64 8)
  %_12 = bitcast i8* %_11 to i64*
  store i64 %_10, i64* %_12, align 8
  %_13 = getelementptr i8, i8* %_11, i64 504403158265495552
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_1
  %_14 = call i64 @_B_mod (i64 7, i64 7)
  store i64 %_14, i64* %_2
  %_15 = load i64, i64* %_2
  %_16 = call i8* @_bal_alloc (i64 8)
  %_17 = bitcast i8* %_16 to i64*
  store i64 %_15, i64* %_17, align 8
  %_18 = getelementptr i8, i8* %_16, i64 504403158265495552
  call void @_Bio__println (i8* %_18)
  store i8* null, i8** %_3
  %_19 = call i64 @_B_mod (i64 6, i64 9)
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
  call void @_bal_panic (i64 516)
  unreachable
}
define internal i64 @_B_mod (i64 %_0, i64 %_1) {
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
  call void @_bal_panic (i64 2052)
  unreachable
L4:
  store i64 2306, i64* %_3
  br label %L2
L5:
  %_10 = icmp eq i64 %_7, -9223372036854775808
  %_11 = icmp eq i64 %_8, -1
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %L7, label %L6
L6:
  %_13 = srem i64 %_7, %_8
  store i64 %_13, i64* %_2
  br label %L8
L7:
  store i64 0, i64* %_2
  br label %L8
L8:
  %_14 = load i64, i64* %_2
  ret i64 %_14
}
