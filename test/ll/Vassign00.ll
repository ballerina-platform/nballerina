declare void @_Bio__println (i64)
define void @_B_main () {
  %x = alloca i64, align 8
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  store i64 0, i64* %x, align 8
  %_3 = load i64, i64* %x, align 8
  call void @_Bio__println (i64 %_3)
  store i1 0, i1* %_0, align 8
  store i64 1, i64* %x, align 8
  %_4 = load i64, i64* %x, align 8
  call void @_Bio__println (i64 %_4)
  store i1 0, i1* %_1, align 8
  store i64 2, i64* %x, align 8
  %_5 = load i64, i64* %x, align 8
  call void @_Bio__println (i64 %_5)
  store i1 0, i1* %_2, align 8
  ret void
}
