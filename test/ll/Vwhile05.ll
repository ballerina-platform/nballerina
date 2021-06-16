declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  call void @_B_printWhile ()
  store i1 0, i1* %_0, align 8
  ret void
}
define internal void @_B_printWhile () {
  %_0 = alloca i1, align 8
  br label %L1
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_0, align 8
  ret void
L1:
}
