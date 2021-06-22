declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  call void @_B_printComp ()
  store i8* null, i8** %_0
  ret void
}
define internal void @_B_printComp () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = icmp ugt i1 1, 0
  store i1 %_2, i1* %_0
  %_3 = load i1, i1* %_0
  br i1 %_3, label %L1, label %L2
L1:
  %_4 = call i8* @_bal_alloc (i64 8)
  %_5 = bitcast i8* %_4 to i64*
  store i64 1, i64* %_5, align 8
  %_6 = getelementptr i8, i8* %_4, i64 144115188075855872
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_1
  br label %L2
L2:
  ret void
}
