declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  call void @_B_printBranch (i1 1, i1 1)
  store i1 0, i1* %_0, align 8
  call void @_B_printBranch (i1 1, i1 0)
  store i1 0, i1* %_1, align 8
  call void @_B_printBranch (i1 0, i1 1)
  store i1 0, i1* %_2, align 8
  call void @_B_printBranch (i1 0, i1 0)
  store i1 0, i1* %_3, align 8
  ret void
}
define internal void @_B_printBranch (i1 %_0, i1 %_1) {
  %x = alloca i1, align 8
  %y = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i1, align 8
  store i1 %_0, i1* %x, align 8
  store i1 %_1, i1* %y, align 8
  %_8 = load i1, i1* %x, align 8
  br i1 %_8, label %L1, label %L5
L1:
  %_9 = load i1, i1* %y, align 8
  br i1 %_9, label %L2, label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_4, align 8
  br label %L4
L3:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_5, align 8
  br label %L4
L4:
  br label %L9
L5:
  %_10 = load i1, i1* %y, align 8
  br i1 %_10, label %L6, label %L7
L6:
  call void @_Bio__println (i64 2)
  store i1 0, i1* %_6, align 8
  br label %L8
L7:
  call void @_Bio__println (i64 3)
  store i1 0, i1* %_7, align 8
  br label %L8
L8:
  br label %L9
L9:
  ret void
}
