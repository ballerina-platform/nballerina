define void @_B_main () {
  %_0 = alloca i1, align 8
  call void @_B_foo ()
  store i1 0, i1* %_0, align 8
  ret void
}
define internal void @_B_foo () {
  br label %L1
L1:
  ret void
}
