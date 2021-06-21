declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i8*
  call void @_Bio__println (i64 42)
  store i8* null, i8** %_0
  call void @_Bio__println (i64 -1)
  store i8* null, i8** %_2
  call void @_Bio__println (i64 0)
  store i8* null, i8** %_3
  ret void
}
