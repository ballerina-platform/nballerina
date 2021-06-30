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
  call void @_B_printBranch (i1 1, i1 1)
  store i8* null, i8** %_0
  call void @_B_printBranch (i1 1, i1 0)
  store i8* null, i8** %_1
  call void @_B_printBranch (i1 0, i1 1)
  store i8* null, i8** %_2
  call void @_B_printBranch (i1 0, i1 0)
  store i8* null, i8** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printBranch (i1 %_0, i1 %_1) {
  %x = alloca i1
  %y = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L11, label %L1
L1:
  store i1 %_0, i1* %x
  store i1 %_1, i1* %y
  %_9 = load i1, i1* %x
  br i1 %_9, label %L2, label %L6
L2:
  %_10 = load i1, i1* %y
  br i1 %_10, label %L3, label %L4
L3:
  %_11 = call i8* @_bal_alloc (i64 8)
  %_12 = bitcast i8* %_11 to i64*
  store i64 0, i64* %_12, align 8
  %_13 = getelementptr i8, i8* %_11, i64 504403158265495552
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_2
  br label %L5
L4:
  %_14 = call i8* @_bal_alloc (i64 8)
  %_15 = bitcast i8* %_14 to i64*
  store i64 1, i64* %_15, align 8
  %_16 = getelementptr i8, i8* %_14, i64 504403158265495552
  call void @_Bio__println (i8* %_16)
  store i8* null, i8** %_3
  br label %L5
L5:
  br label %L10
L6:
  %_17 = load i1, i1* %y
  br i1 %_17, label %L7, label %L8
L7:
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 2, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 504403158265495552
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_4
  br label %L9
L8:
  %_21 = call i8* @_bal_alloc (i64 8)
  %_22 = bitcast i8* %_21 to i64*
  store i64 3, i64* %_22, align 8
  %_23 = getelementptr i8, i8* %_21, i64 504403158265495552
  call void @_Bio__println (i8* %_23)
  store i8* null, i8** %_5
  br label %L9
L9:
  br label %L10
L10:
  ret void
L11:
  call void @_bal_panic (i64 2564)
  unreachable
}
