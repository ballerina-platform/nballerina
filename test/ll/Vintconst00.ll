@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L2, label %L1
L1:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 42, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 144115188075855872
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_0
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 -1, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 144115188075855872
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_2
  %_13 = call i8* @_bal_alloc (i64 8)
  %_14 = bitcast i8* %_13 to i64*
  store i64 0, i64* %_14, align 8
  %_15 = getelementptr i8, i8* %_13, i64 144115188075855872
  call void @_Bio__println (i8* %_15)
  store i8* null, i8** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
