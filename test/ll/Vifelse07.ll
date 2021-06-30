@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  call void @_B_printTrue ()
  store i8* null, i8** %_0
  call void @_B_printFalse ()
  store i8* null, i8** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printTrue () {
  %_0 = alloca i8*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  %_4 = call i8* @_bal_alloc (i64 8)
  %_5 = bitcast i8* %_4 to i64*
  store i64 1, i64* %_5, align 8
  %_6 = getelementptr i8, i8* %_4, i64 504403158265495552
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_0
  ret void
L2:
  call void @_bal_panic (i64 2052)
  unreachable
}
define internal void @_B_printFalse () {
  %_0 = alloca i8*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  %_4 = call i8* @_bal_alloc (i64 8)
  %_5 = bitcast i8* %_4 to i64*
  store i64 0, i64* %_5, align 8
  %_6 = getelementptr i8, i8* %_4, i64 504403158265495552
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_0
  ret void
L2:
  call void @_bal_panic (i64 3588)
  unreachable
}
