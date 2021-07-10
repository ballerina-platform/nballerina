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
  call void @_B_foo ()
  store i8* null, i8** %_0
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_foo () {
  %b = alloca i1
  %_0 = alloca i8*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L5, label %L1
L1:
  store i1 0, i1* %b
  br label %L2
L2:
  %_4 = load i1, i1* %b
  br i1 %_4, label %L4, label %L3
L3:
  ret void
L4:
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 0, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 504403158265495552
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_0
  br label %L2
L5:
  call void @_bal_panic (i64 1796)
  unreachable
}
