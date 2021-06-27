@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
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
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L4, label %L1
L1:
  br label %L2
L2:
  ret void
L4:
  call void @_bal_panic (i64 1796)
  unreachable
}
