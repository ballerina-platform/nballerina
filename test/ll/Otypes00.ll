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
  call void @_B_foo (i64 17)
  store i8* null, i8** %_0
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_foo (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  store i64 %_0, i64* %n
  %_5 = load i64, i64* %n
  %_6 = call i8* @_bal_alloc (i64 8)
  %_7 = bitcast i8* %_6 to i64*
  store i64 %_5, i64* %_7, align 8
  %_8 = getelementptr i8, i8* %_6, i64 144115188075855872
  call void @_Bio__println (i8* %_8)
  store i8* null, i8** %_1
  ret void
L2:
  call void @_bal_panic (i64 1796)
  unreachable
}
