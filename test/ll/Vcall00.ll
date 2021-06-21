declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i64
  %x = alloca i64
  %_1 = alloca i8*
  %_2 = call i64 @_B_foo ()
  store i64 %_2, i64* %_0
  %_3 = load i64, i64* %_0
  store i64 %_3, i64* %x
  %_4 = load i64, i64* %x
  call void @_Bio__println (i64 %_4)
  store i8* null, i8** %_1
  ret void
}
define internal i64 @_B_foo () {
  ret i64 2
}
