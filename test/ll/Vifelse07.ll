declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  call void @_B_printTrue ()
  store i8* null, i8** %_0
  call void @_B_printFalse ()
  store i8* null, i8** %_1
  ret void
}
define internal void @_B_printTrue () {
  %_0 = alloca i8*
  %_1 = call i8* @_bal_alloc (i64 8)
  %_2 = bitcast i8* %_1 to i64*
  store i64 1, i64* %_2, align 8
  %_3 = getelementptr i8, i8* %_1, i64 144115188075855872
  call void @_Bio__println (i8* %_3)
  store i8* null, i8** %_0
  ret void
}
define internal void @_B_printFalse () {
  %_0 = alloca i8*
  %_1 = call i8* @_bal_alloc (i64 8)
  %_2 = bitcast i8* %_1 to i64*
  store i64 0, i64* %_2, align 8
  %_3 = getelementptr i8, i8* %_1, i64 144115188075855872
  call void @_Bio__println (i8* %_3)
  store i8* null, i8** %_0
  ret void
}
