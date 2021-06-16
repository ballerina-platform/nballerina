declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  call void @_B_printBoolean ()
  store i1 0, i1* %_0, align 8
  ret void
}
define internal void @_B_printBoolean () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_1, align 8
  ret void
}
