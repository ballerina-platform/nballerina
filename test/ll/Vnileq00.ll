declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  call void @_B_makeNil ()
  store i8* null, i8** %_1
  call void @_B_makeNil ()
  store i8* null, i8** %_2
  %_4 = load i8*, i8** %_1
  %_5 = load i8*, i8** %_2
  %_6 = icmp eq i8* %_4, %_5
  store i1 %_6, i1* %_0
  %_7 = load i1, i1* %_0
  br i1 %_7, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_3
  br label %L2
L2:
  ret void
}
define internal void @_B_makeNil () {
  ret void
}
