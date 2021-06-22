declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = call i1 @_B_foo ()
  store i1 %_3, i1* %_0
  %_4 = load i1, i1* %_0
  br i1 %_4, label %L1, label %L2
L1:
  call void @_B_bar (i64 100)
  store i8* null, i8** %_1
  br label %L3
L2:
  call void @_B_baz (i64 200)
  store i8* null, i8** %_2
  br label %L3
L3:
  ret void
}
define internal i1 @_B_foo () {
  ret i1 1
}
define internal void @_B_bar (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i8*
  store i64 %_0, i64* %x
  %_2 = load i64, i64* %x
  %_3 = call i8* @_bal_alloc (i64 8)
  %_4 = bitcast i8* %_3 to i64*
  store i64 %_2, i64* %_4, align 8
  %_5 = getelementptr i8, i8* %_3, i64 144115188075855872
  call void @_Bio__println (i8* %_5)
  store i8* null, i8** %_1
  ret void
}
define internal void @_B_baz (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i8*
  store i64 %_0, i64* %x
  %_2 = load i64, i64* %x
  %_3 = call i8* @_bal_alloc (i64 8)
  %_4 = bitcast i8* %_3 to i64*
  store i64 %_2, i64* %_4, align 8
  %_5 = getelementptr i8, i8* %_3, i64 144115188075855872
  call void @_Bio__println (i8* %_5)
  store i8* null, i8** %_1
  ret void
}
