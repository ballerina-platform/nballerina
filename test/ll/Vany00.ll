declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %n = alloca i64
  %v = alloca i8*
  %_0 = alloca i8*
  store i64 1, i64* %n
  %_1 = load i64, i64* %n
  %_2 = call i8* @_bal_alloc (i64 8)
  %_3 = bitcast i8* %_2 to i64*
  store i64 %_1, i64* %_3, align 8
  %_4 = getelementptr i8, i8* %_2, i64 144115188075855872
  store i8* %_4, i8** %v
  %_5 = load i8*, i8** %v
  call void @_Bio__println (i8* %_5)
  store i8* null, i8** %_0
  ret void
}
