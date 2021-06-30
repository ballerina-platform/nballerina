@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i8*
  %_7 = alloca i8*
  %_8 = alloca i8
  %_9 = load i8*, i8** @_bal_stack_guard
  %_10 = icmp ult i8* %_8, %_9
  br i1 %_10, label %L2, label %L1
L1:
  call void @_B_printEq (i1 1, i1 1)
  store i8* null, i8** %_0
  call void @_B_printEq (i1 1, i1 0)
  store i8* null, i8** %_1
  call void @_B_printEq (i1 0, i1 1)
  store i8* null, i8** %_2
  call void @_B_printEq (i1 0, i1 0)
  store i8* null, i8** %_3
  call void @_B_printNotEq (i1 1, i1 1)
  store i8* null, i8** %_4
  call void @_B_printNotEq (i1 1, i1 0)
  store i8* null, i8** %_5
  call void @_B_printNotEq (i1 0, i1 1)
  store i8* null, i8** %_6
  call void @_B_printNotEq (i1 0, i1 0)
  store i8* null, i8** %_7
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printEq (i1 %_0, i1 %_1) {
  %b1 = alloca i1
  %b2 = alloca i1
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L5, label %L1
L1:
  store i1 %_0, i1* %b1
  store i1 %_1, i1* %b2
  %_8 = load i1, i1* %b1
  %_9 = load i1, i1* %b2
  %_10 = icmp eq i1 %_8, %_9
  store i1 %_10, i1* %_2
  %_11 = load i1, i1* %_2
  br i1 %_11, label %L2, label %L3
L2:
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 1, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 504403158265495552
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_3
  br label %L4
L3:
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 0, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 504403158265495552
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_4
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 3588)
  unreachable
}
define internal void @_B_printNotEq (i1 %_0, i1 %_1) {
  %b1 = alloca i1
  %b2 = alloca i1
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L5, label %L1
L1:
  store i1 %_0, i1* %b1
  store i1 %_1, i1* %b2
  %_8 = load i1, i1* %b1
  %_9 = load i1, i1* %b2
  %_10 = icmp ne i1 %_8, %_9
  store i1 %_10, i1* %_2
  %_11 = load i1, i1* %_2
  br i1 %_11, label %L2, label %L3
L2:
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 1, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 504403158265495552
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_3
  br label %L4
L3:
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 0, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 504403158265495552
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_4
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 5892)
  unreachable
}
