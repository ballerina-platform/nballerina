declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  call void @_B_printBranch (i64 5)
  store i1 0, i1* %_0, align 8
  call void @_B_printBranch (i64 10)
  store i1 0, i1* %_1, align 8
  call void @_B_printBranch (i64 15)
  store i1 0, i1* %_2, align 8
  ret void
}
define internal void @_B_printBranch (i64 %_0) {
  %x = alloca i64, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i1, align 8
  store i64 %_0, i64* %x, align 8
  %_7 = load i64, i64* %x, align 8
  %_8 = icmp slt i64 %_7, 10
  store i1 %_8, i1* %_2, align 8
  %_9 = load i1, i1* %_2, align 8
  br i1 %_9, label %L1, label %L2
L1:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_3, align 8
  br label %L6
L2:
  %_10 = load i64, i64* %x, align 8
  %_11 = icmp eq i64 %_10, 10
  store i1 %_11, i1* %_4, align 8
  %_12 = load i1, i1* %_4, align 8
  br i1 %_12, label %L3, label %L4
L3:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_5, align 8
  br label %L5
L4:
  call void @_Bio__println (i64 2)
  store i1 0, i1* %_6, align 8
  br label %L5
L5:
  br label %L6
L6:
  ret void
}
