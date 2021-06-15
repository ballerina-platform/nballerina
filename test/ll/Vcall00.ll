declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %x = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = call i64 @_B_foo ()
  store i64 %_2, i64* %_0, align 8
  %_3 = load i64, i64* %_0, align 8
  store i64 %_3, i64* %x, align 8
  %_4 = load i64, i64* %x, align 8
  call void @_Bio__println (i64 %_4)
  store i1 0, i1* %_1, align 8
  ret void
}
define internal i64 @_B_foo () {
  ret i64 2
}
