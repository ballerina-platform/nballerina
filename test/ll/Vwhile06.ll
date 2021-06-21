declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  br label %L1
L1:
  call void @_Bio__println (i64 0)
  store i8* null, i8** %_0
  br label %L2
L2:
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_1
  ret void
}
