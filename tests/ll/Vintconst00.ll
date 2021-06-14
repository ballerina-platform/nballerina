declare void @_Bio__println (i64)
define void @_B_main () {
  %R0 = alloca i1, align 8
  %R1 = alloca i64, align 8
  %R2 = alloca i1, align 8
  %R3 = alloca i1, align 8
  call void @_Bio__println (i64 42)
  store i1 0, i1* %R0, align 8
  call void @_Bio__println (i64 -1)
  store i1 0, i1* %R2, align 8
  call void @_Bio__println (i64 0)
  store i1 0, i1* %R3, align 8
  ret void
}
