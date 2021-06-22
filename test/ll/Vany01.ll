declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %b = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = zext i1 1 to i64
  %_5 = or i64 %_4, 72057594037927936
  %_6 = getelementptr i8, i8* null, i64 %_5
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_0
  %_7 = zext i1 0 to i64
  %_8 = or i64 %_7, 72057594037927936
  %_9 = getelementptr i8, i8* null, i64 %_8
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_1
  store i1 1, i1* %b
  %_10 = load i1, i1* %b
  %_11 = zext i1 %_10 to i64
  %_12 = or i64 %_11, 72057594037927936
  %_13 = getelementptr i8, i8* null, i64 %_12
  call void @_Bio__println (i8* %_13)
  store i8* null, i8** %_2
  store i1 0, i1* %b
  %_14 = load i1, i1* %b
  %_15 = zext i1 %_14 to i64
  %_16 = or i64 %_15, 72057594037927936
  %_17 = getelementptr i8, i8* null, i64 %_16
  call void @_Bio__println (i8* %_17)
  store i8* null, i8** %_3
  ret void
}
