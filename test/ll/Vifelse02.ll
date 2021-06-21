declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  call void @_B_printBranch (i64 5)
  store i8* null, i8** %_0
  call void @_B_printBranch (i64 10)
  store i8* null, i8** %_1
  call void @_B_printBranch (i64 15)
  store i8* null, i8** %_2
  ret void
}
define internal void @_B_printBranch (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i8*
  store i64 %_0, i64* %x
  %_6 = load i64, i64* %x
  %_7 = icmp slt i64 %_6, 10
  store i1 %_7, i1* %_1
  %_8 = load i1, i1* %_1
  br i1 %_8, label %L1, label %L2
L1:
  call void @_Bio__println (i64 0)
  store i8* null, i8** %_2
  br label %L6
L2:
  %_9 = load i64, i64* %x
  %_10 = icmp eq i64 %_9, 10
  store i1 %_10, i1* %_3
  %_11 = load i1, i1* %_3
  br i1 %_11, label %L3, label %L4
L3:
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_4
  br label %L5
L4:
  call void @_Bio__println (i64 2)
  store i8* null, i8** %_5
  br label %L5
L5:
  br label %L6
L6:
  ret void
}
