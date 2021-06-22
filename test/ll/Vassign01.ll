declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %b = alloca i1
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  store i1 0, i1* %b
  %_3 = load i1, i1* %b
  call void @_B_printBoolean (i1 %_3)
  store i8* null, i8** %_0
  store i1 1, i1* %b
  %_4 = load i1, i1* %b
  call void @_B_printBoolean (i1 %_4)
  store i8* null, i8** %_1
  store i1 0, i1* %b
  %_5 = load i1, i1* %b
  call void @_B_printBoolean (i1 %_5)
  store i8* null, i8** %_2
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
