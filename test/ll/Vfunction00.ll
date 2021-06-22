declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = call i8* @_bal_alloc (i64 8)
  %_4 = bitcast i8* %_3 to i64*
  store i64 0, i64* %_4, align 8
  %_5 = getelementptr i8, i8* %_3, i64 144115188075855872
  call void @_Bio__println (i8* %_5)
  store i8* null, i8** %_0
  call void @_B_nothing ()
  store i8* null, i8** %_1
  %_6 = call i8* @_bal_alloc (i64 8)
  %_7 = bitcast i8* %_6 to i64*
  store i64 1, i64* %_7, align 8
  %_8 = getelementptr i8, i8* %_6, i64 144115188075855872
  call void @_Bio__println (i8* %_8)
  store i8* null, i8** %_2
  ret void
}
define internal void @_B_nothing () {
  ret void
}
