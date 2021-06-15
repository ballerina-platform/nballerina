declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = call i1 @_B_foo ()
  store i1 %_2, i1* %_0, align 8
  %_3 = load i1, i1* %_0, align 8
  call void @_B_printBoolean (i1 %_3)
  store i1 0, i1* %_1, align 8
  ret void
}
define internal i1 @_B_foo () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = call i1 @_B_bar (i64 1)
  store i1 %_2, i1* %_0, align 8
  %_3 = load i1, i1* %_0, align 8
  %_4 = xor i1 1, %_3
  store i1 %_4, i1* %_1, align 8
  %_5 = load i1, i1* %_1, align 8
  br i1 %_5, label %L1, label %L2
L1:
  ret i1 1
L2:
  ret i1 0
}
define internal i1 @_B_bar (i64 %_0) {
  %x = alloca i64, align 8
  %_1 = alloca i1, align 8
  store i64 %_0, i64* %x, align 8
  %_2 = load i64, i64* %x, align 8
  %_3 = icmp eq i64 %_2, 1
  store i1 %_3, i1* %_1, align 8
  %_4 = load i1, i1* %_1, align 8
  ret i1 %_4
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  store i1 %_0, i1* %b, align 8
  %_3 = load i1, i1* %b, align 8
  br i1 %_3, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_1, align 8
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_2, align 8
  br label %L3
L3:
  ret void
}
