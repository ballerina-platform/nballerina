declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = call i1 @_B_not (i1 1)
  store i1 %_4, i1* %_0
  %_5 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_5)
  store i8* null, i8** %_1
  %_6 = call i1 @_B_not (i1 0)
  store i1 %_6, i1* %_2
  %_7 = load i1, i1* %_2
  call void @_B_printBoolean (i1 %_7)
  store i8* null, i8** %_3
  ret void
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  store i1 %_0, i1* %b
  %_3 = load i1, i1* %b
  br i1 %_3, label %L1, label %L2
L1:
  %_4 = call i8* @_bal_alloc (i64 8)
  %_5 = bitcast i8* %_4 to i64*
  store i64 1, i64* %_5, align 8
  %_6 = getelementptr i8, i8* %_4, i64 144115188075855872
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_1
  br label %L3
L2:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 0, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 144115188075855872
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_2
  br label %L3
L3:
  ret void
}
define internal i1 @_B_not (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i1
  store i1 %_0, i1* %b
  %_2 = load i1, i1* %b
  %_3 = xor i1 1, %_2
  store i1 %_3, i1* %_1
  %_4 = load i1, i1* %_1
  ret i1 %_4
}
