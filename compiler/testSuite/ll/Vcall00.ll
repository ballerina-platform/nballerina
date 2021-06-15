declare void @_Bio__println (i64)
define void @_B_main () {
  %R0 = alloca i64, align 8
  %R1 = alloca i64, align 8
  %R2 = alloca i1, align 8
  %R3 = call i64 @_B_foo ()
  store i64 %R3, i64* %R0, align 8
  %R4 = load i64, i64* %R0, align 8
  store i64 %R4, i64* %R1, align 8
  %R5 = load i64, i64* %R1, align 8
  call void @_Bio__println (i64 %R5)
  store i1 0, i1* %R2, align 8
  ret void
}
define internal i64 @_B_foo () {
  ret i64 2
}
