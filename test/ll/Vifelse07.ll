declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  call void @_B_printTrue ()
  store i1 0, i1* %_0, align 8
  call void @_B_printFalse ()
  store i1 0, i1* %_1, align 8
  ret void
}
define internal void @_B_printTrue () {
  %_0 = alloca i1, align 8
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_0, align 8
  ret void
}
define internal void @_B_printFalse () {
  %_0 = alloca i1, align 8
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_0, align 8
  ret void
}
