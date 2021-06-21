declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i8*
  call void @_B_printBoolean ()
  store i8* null, i8** %_0
  ret void
}
define internal void @_B_printBoolean () {
  %_0 = alloca i1
  %_1 = alloca i8*
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_1
  ret void
}
