declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  call void @_B_printBranch (i1 1, i1 1)
  store i8* null, i8** %_0
  call void @_B_printBranch (i1 1, i1 0)
  store i8* null, i8** %_1
  call void @_B_printBranch (i1 0, i1 1)
  store i8* null, i8** %_2
  call void @_B_printBranch (i1 0, i1 0)
  store i8* null, i8** %_3
  ret void
}
define internal void @_B_printBranch (i1 %_0, i1 %_1) {
  %x = alloca i1
  %y = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i8*
  store i1 %_0, i1* %x
  store i1 %_1, i1* %y
  %_6 = load i1, i1* %x
  br i1 %_6, label %L1, label %L5
L1:
  %_7 = load i1, i1* %y
  br i1 %_7, label %L2, label %L3
L2:
  call void @_Bio__println (i64 0)
  store i8* null, i8** %_2
  br label %L4
L3:
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_3
  br label %L4
L4:
  br label %L9
L5:
  %_8 = load i1, i1* %y
  br i1 %_8, label %L6, label %L7
L6:
  call void @_Bio__println (i64 2)
  store i8* null, i8** %_4
  br label %L8
L7:
  call void @_Bio__println (i64 3)
  store i8* null, i8** %_5
  br label %L8
L8:
  br label %L9
L9:
  ret void
}
