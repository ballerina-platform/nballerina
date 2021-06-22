declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  call void @_B_printBranch (i64 5)
  store i8* null, i8** %_0
  call void @_B_printBranch (i64 10)
  store i8* null, i8** %_1
  call void @_B_printBranch (i64 15)
  store i8* null, i8** %_2
  ret void
}
define internal void @_B_printBranch (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i8*
  store i64 %_0, i64* %x
  %_6 = load i64, i64* %x
  %_7 = icmp slt i64 %_6, 10
  store i1 %_7, i1* %_1
  %_8 = load i1, i1* %_1
  br i1 %_8, label %L1, label %L2
L1:
  %_9 = call i8* @_bal_alloc (i64 8)
  %_10 = bitcast i8* %_9 to i64*
  store i64 0, i64* %_10, align 8
  %_11 = getelementptr i8, i8* %_9, i64 144115188075855872
  call void @_Bio__println (i8* %_11)
  store i8* null, i8** %_2
  br label %L6
L2:
  %_12 = load i64, i64* %x
  %_13 = icmp eq i64 %_12, 10
  store i1 %_13, i1* %_3
  %_14 = load i1, i1* %_3
  br i1 %_14, label %L3, label %L4
L3:
  %_15 = call i8* @_bal_alloc (i64 8)
  %_16 = bitcast i8* %_15 to i64*
  store i64 1, i64* %_16, align 8
  %_17 = getelementptr i8, i8* %_15, i64 144115188075855872
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_4
  br label %L5
L4:
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to i64*
  store i64 2, i64* %_19, align 8
  %_20 = getelementptr i8, i8* %_18, i64 144115188075855872
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_5
  br label %L5
L5:
  br label %L6
L6:
  ret void
}
