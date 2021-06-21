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
  %_3 = alloca i8*
  store i64 %_0, i64* %x
  %_4 = load i64, i64* %x
  %_5 = icmp slt i64 %_4, 10
  store i1 %_5, i1* %_1
  %_6 = load i1, i1* %_1
  br i1 %_6, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_2
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i8* null, i8** %_3
  br label %L3
L3:
  ret void
}
