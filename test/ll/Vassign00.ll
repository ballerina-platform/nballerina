declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %x = alloca i64
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  store i64 0, i64* %x
  %_3 = load i64, i64* %x
  %_4 = call i8* @_bal_alloc (i64 8)
  %_5 = bitcast i8* %_4 to i64*
  store i64 %_3, i64* %_5, align 8
  %_6 = getelementptr i8, i8* %_4, i64 144115188075855872
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_0
  store i64 1, i64* %x
  %_7 = load i64, i64* %x
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 %_7, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 144115188075855872
  call void @_Bio__println (i8* %_10)
  store i8* null, i8** %_1
  store i64 2, i64* %x
  %_11 = load i64, i64* %x
  %_12 = call i8* @_bal_alloc (i64 8)
  %_13 = bitcast i8* %_12 to i64*
  store i64 %_11, i64* %_13, align 8
  %_14 = getelementptr i8, i8* %_12, i64 144115188075855872
  call void @_Bio__println (i8* %_14)
  store i8* null, i8** %_2
  ret void
}
