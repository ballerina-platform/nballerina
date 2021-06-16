declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  call void @_B_makeNil ()
  store i1 0, i1* %_1, align 8
  call void @_B_makeNil ()
  store i1 0, i1* %_2, align 8
  %_4 = load i1, i1* %_1, align 8
  %_5 = load i1, i1* %_2, align 8
  %_6 = icmp eq i1 %_4, %_5
  store i1 %_6, i1* %_0, align 8
  %_7 = load i1, i1* %_0, align 8
  br i1 %_7, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_3, align 8
  br label %L2
L2:
  ret void
}
define internal void @_B_makeNil () {
  ret void
}
