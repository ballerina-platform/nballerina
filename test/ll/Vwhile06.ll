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
  br i1 %_4, label %L4, label %L1
L1:
  br label %L2
L2:
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 0, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 504403158265495552
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_0
  br label %L3
L3:
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 1, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 504403158265495552
  call void @_Bio__println (i8* %_10)
  store i8* null, i8** %_1
  ret void
L4:
  call void @_bal_panic (i64 772)
  unreachable
}
