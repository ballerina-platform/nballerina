declare void @_Bio__println (i64)
define void @_B_main () {
  %x = alloca i64
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  store i64 0, i64* %x
  %_3 = load i64, i64* %x
  call void @_Bio__println (i64 %_3)
  store i8* null, i8** %_0
  store i64 1, i64* %x
  %_4 = load i64, i64* %x
  call void @_Bio__println (i64 %_4)
  store i8* null, i8** %_1
  store i64 2, i64* %x
  %_5 = load i64, i64* %x
  call void @_Bio__println (i64 %_5)
  store i8* null, i8** %_2
  ret void
}
