@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i64 @_B_div (i64 672, i64 0)
  store i64 %_5, i64* %_0
  %_6 = load i64, i64* %_0
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 %_6, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 504403158265495552
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
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
  call void @_bal_panic (i64 1796)
  unreachable
L4:
  store i64 2050, i64* %_3
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
  store i64 2049, i64* %_3
  br label %L2
}
