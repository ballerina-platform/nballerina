declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  br label %L1
L1:
  %_2 = call i8* @_bal_alloc (i64 8)
  %_3 = bitcast i8* %_2 to i64*
  store i64 0, i64* %_3, align 8
  %_4 = getelementptr i8, i8* %_2, i64 144115188075855872
  call void @_Bio__println (i8* %_4)
  store i8* null, i8** %_0
  br label %L2
L2:
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 1, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 144115188075855872
  call void @_Bio__println (i8* %_7)
  store i8* null, i8** %_1
  ret void
}
