@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L2, label %L1
L1:
  call void @_B_printIfFalse (i1 1)
  store i8* null, i8** %_0
  call void @_B_printIfFalse (i1 0)
  store i8* null, i8** %_1
  call void @_B_printIfTrue (i1 1)
  store i8* null, i8** %_2
  call void @_B_printIfTrue (i1 0)
  store i8* null, i8** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printIfFalse (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L5, label %L1
L1:
  store i1 %_0, i1* %b
  %_5 = load i1, i1* %b
  br i1 %_5, label %L2, label %L3
L2:
  br label %L4
L3:
  %_6 = call i8* @_bal_alloc (i64 8)
  %_7 = bitcast i8* %_6 to i64*
  store i64 0, i64* %_7, align 8
  %_8 = getelementptr i8, i8* %_6, i64 144115188075855872
  call void @_Bio__println (i8* %_8)
  store i8* null, i8** %_1
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 2564)
  unreachable
}
define internal void @_B_printIfTrue (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L4, label %L1
L1:
  store i1 %_0, i1* %b
  %_5 = load i1, i1* %b
  br i1 %_5, label %L2, label %L3
L2:
  %_6 = call i8* @_bal_alloc (i64 8)
  %_7 = bitcast i8* %_6 to i64*
  store i64 1, i64* %_7, align 8
  %_8 = getelementptr i8, i8* %_6, i64 144115188075855872
  call void @_Bio__println (i8* %_8)
  store i8* null, i8** %_1
  br label %L3
L3:
  ret void
L4:
  call void @_bal_panic (i64 4868)
  unreachable
}
