declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  br label %L1
L1:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_0, align 8
  br label %L2
L2:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_1, align 8
  ret void
}
