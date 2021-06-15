declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  call void @_Bio__println (i64 42)
  store i1 0, i1* %_0, align 8
  call void @_Bio__println (i64 -1)
  store i1 0, i1* %_2, align 8
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_3, align 8
  ret void
}
