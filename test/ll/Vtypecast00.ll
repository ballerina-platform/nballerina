@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L2, label %L1
L1:
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 1, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 504403158265495552
  call void @_Bio__println (i8* %_10)
  store i8* null, i8** %_0
  call void @_Bio__println (i8* null)
  store i8* null, i8** %_1
  %_11 = zext i1 1 to i64
  %_12 = or i64 %_11, 72057594037927936
  %_13 = getelementptr i8, i8* null, i64 %_12
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_2
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 2, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 504403158265495552
  call void @_Bio__println (i8* %_16)
  store i8* null, i8** %_3
  %_17 = zext i1 0 to i64
  %_18 = or i64 %_17, 72057594037927936
  %_19 = getelementptr i8, i8* null, i64 %_18
  call void @_Bio__println (i8* %_19)
  store i8* null, i8** %_4
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
