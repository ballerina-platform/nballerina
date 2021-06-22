declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = zext i1 1 to i64
  %_2 = or i64 %_1, 72057594037927936
  %_3 = getelementptr i8, i8* null, i64 %_2
  call void @_Bio__println (i8* %_3)
  store i8* null, i8** %_0
  ret void
}
