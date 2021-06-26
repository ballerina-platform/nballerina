@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %b = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L2, label %L1
L1:
  %_7 = zext i1 1 to i64
  %_8 = or i64 %_7, 72057594037927936
  %_9 = getelementptr i8, i8* null, i64 %_8
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_0
  %_10 = zext i1 0 to i64
  %_11 = or i64 %_10, 72057594037927936
  %_12 = getelementptr i8, i8* null, i64 %_11
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_1
  store i1 1, i1* %b
  %_13 = load i1, i1* %b
  %_14 = zext i1 %_13 to i64
  %_15 = or i64 %_14, 72057594037927936
  %_16 = getelementptr i8, i8* null, i64 %_15
  call void @_Bio__println (i8* %_16)
  store i8* null, i8** %_2
  store i1 0, i1* %b
  %_17 = load i1, i1* %b
  %_18 = zext i1 %_17 to i64
  %_19 = or i64 %_18, 72057594037927936
  %_20 = getelementptr i8, i8* null, i64 %_19
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_3
  ret void
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
