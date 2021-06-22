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
}
define internal void @_B_printEq (i1 %_0, i1 %_1) {
  %b1 = alloca i1
  %b2 = alloca i1
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i8*
  store i1 %_0, i1* %b1
  store i1 %_1, i1* %b2
  %_5 = load i1, i1* %b1
  %_6 = load i1, i1* %b2
  %_7 = icmp eq i1 %_5, %_6
  store i1 %_7, i1* %_2
  %_8 = load i1, i1* %_2
  br i1 %_8, label %L1, label %L2
L1:
  %_9 = call i8* @_bal_alloc (i64 8)
  %_10 = bitcast i8* %_9 to i64*
  store i64 1, i64* %_10, align 8
  %_11 = getelementptr i8, i8* %_9, i64 144115188075855872
  call void @_Bio__println (i8* %_11)
  store i8* null, i8** %_3
  br label %L3
L2:
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 0, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 144115188075855872
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_4
  br label %L3
L3:
  ret void
}
define internal void @_B_printNotEq (i1 %_0, i1 %_1) {
  %b1 = alloca i1
  %b2 = alloca i1
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i8*
  store i1 %_0, i1* %b1
  store i1 %_1, i1* %b2
  %_5 = load i1, i1* %b1
  %_6 = load i1, i1* %b2
  %_7 = icmp ne i1 %_5, %_6
  store i1 %_7, i1* %_2
  %_8 = load i1, i1* %_2
  br i1 %_8, label %L1, label %L2
L1:
  %_9 = call i8* @_bal_alloc (i64 8)
  %_10 = bitcast i8* %_9 to i64*
  store i64 1, i64* %_10, align 8
  %_11 = getelementptr i8, i8* %_9, i64 144115188075855872
  call void @_Bio__println (i8* %_11)
  store i8* null, i8** %_3
  br label %L3
L2:
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 0, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 144115188075855872
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_4
  br label %L3
L3:
  ret void
}
