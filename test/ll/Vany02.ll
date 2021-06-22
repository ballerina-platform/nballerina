declare void @_Bio__println (i8*)
declare i8* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = call i8* @_B_foo ()
  store i8* %_4, i8** %_0
  %_5 = load i8*, i8** %_0
  call void @_Bio__println (i8* %_5)
  store i8* null, i8** %_1
  %_6 = call i8* @_B_bar ()
  store i8* %_6, i8** %_2
  %_7 = load i8*, i8** %_2
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_3
  ret void
}
define internal i8* @_B_foo () {
  %_0 = call i8* @_bal_alloc (i64 8)
  %_1 = bitcast i8* %_0 to i64*
  store i64 17, i64* %_1, align 8
  %_2 = getelementptr i8, i8* %_0, i64 144115188075855872
  ret i8* %_2
}
define internal i8* @_B_bar () {
  %_0 = zext i1 0 to i64
  %_1 = or i64 %_0, 72057594037927936
  %_2 = getelementptr i8, i8* null, i64 %_1
  ret i8* %_2
}
