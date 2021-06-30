@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  %_6 = call i8* @_bal_alloc (i64 8)
  %_7 = bitcast i8* %_6 to i64*
  store i64 0, i64* %_7, align 8
  %_8 = getelementptr i8, i8* %_6, i64 504403158265495552
  call void @_Bio__println (i8* %_8)
  store i8* null, i8** %_0
  call void @_B_makeNil ()
  store i8* null, i8** %_1
  %_9 = call i8* @_bal_alloc (i64 8)
  %_10 = bitcast i8* %_9 to i64*
  store i64 1, i64* %_10, align 8
  %_11 = getelementptr i8, i8* %_9, i64 504403158265495552
  call void @_Bio__println (i8* %_11)
  store i8* null, i8** %_2
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_makeNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret void
L2:
  call void @_bal_panic (i64 2308)
  unreachable
}
