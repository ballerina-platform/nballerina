declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 1, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 144115188075855872
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_0
  call void @_Bio__println (i8* null)
  store i8* null, i8** %_1
  %_8 = zext i1 1 to i64
  %_9 = or i64 %_8, 72057594037927936
  %_10 = getelementptr i8, i8* null, i64 %_9
  call void @_Bio__println (i8* %_10)
  store i8* null, i8** %_2
  %_11 = call i8* @_bal_alloc (i64 8)
  %_12 = bitcast i8* %_11 to i64*
  store i64 2, i64* %_12, align 8
  %_13 = getelementptr i8, i8* %_11, i64 144115188075855872
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_3
  %_14 = zext i1 0 to i64
  %_15 = or i64 %_14, 72057594037927936
  %_16 = getelementptr i8, i8* null, i64 %_15
  call void @_Bio__println (i8* %_16)
  store i8* null, i8** %_4
  ret void
}
