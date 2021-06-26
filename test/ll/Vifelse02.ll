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
  call void @_B_printBranch (i64 5)
  store i8* null, i8** %_0
  call void @_B_printBranch (i64 10)
  store i8* null, i8** %_1
  call void @_B_printBranch (i64 15)
  store i8* null, i8** %_2
  ret void
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
define internal void @_B_printBranch (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L8, label %L1
L1:
  store i64 %_0, i64* %x
  %_9 = load i64, i64* %x
  %_10 = icmp slt i64 %_9, 10
  store i1 %_10, i1* %_1
  %_11 = load i1, i1* %_1
  br i1 %_11, label %L2, label %L3
L2:
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 0, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 144115188075855872
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_2
  br label %L7
L3:
  %_15 = load i64, i64* %x
  %_16 = icmp eq i64 %_15, 10
  store i1 %_16, i1* %_3
  %_17 = load i1, i1* %_3
  br i1 %_17, label %L4, label %L5
L4:
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 1, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 144115188075855872
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_4
  br label %L6
L5:
  %_21 = call i8* @_bal_alloc (i64 8)
  %_22 = bitcast i8* %_21 to i64*
  store i64 2, i64* %_22, align 8
  %_23 = getelementptr i8, i8* %_21, i64 144115188075855872
  call void @_Bio__println (i8* %_23)
  store i8* null, i8** %_5
  br label %L6
L6:
  br label %L7
L7:
  ret void
L8:
  call void @_bal_panic (i64 4)
  unreachable
}
