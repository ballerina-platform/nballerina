@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  call void @_B_printBoolean ()
  store i8* null, i8** %_0
  ret void
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
define internal void @_B_printBoolean () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 1, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 144115188075855872
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_1
  ret void
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
