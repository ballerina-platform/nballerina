declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %x = alloca i64
  %_1 = alloca i8*
  %_2 = call i64 @_B_foo ()
  store i64 %_2, i64* %_0
  %_3 = load i64, i64* %_0
  store i64 %_3, i64* %x
  %_4 = load i64, i64* %x
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 %_4, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 144115188075855872
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_1
  ret void
}
define internal i64 @_B_foo () {
  ret i64 2
}
