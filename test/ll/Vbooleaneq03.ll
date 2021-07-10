@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  store i1 0, i1* %_1
  %_6 = load i1, i1* %_1
  %_7 = icmp eq i1 1, %_6
  store i1 %_7, i1* %_0
  %_8 = load i1, i1* %_0
  %_9 = zext i1 %_8 to i64
  %_10 = or i64 %_9, 72057594037927936
  %_11 = getelementptr i8, i8* null, i64 %_10
  call void @_Bio__println (i8* %_11)
  store i8* null, i8** %_2
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
