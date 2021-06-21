define void @_B_main () {
  %_0 = alloca i8*
  call void @_B_foo ()
  store i8* null, i8** %_0
  ret void
}
define internal void @_B_foo () {
  br label %L1
L1:
  ret void
}
