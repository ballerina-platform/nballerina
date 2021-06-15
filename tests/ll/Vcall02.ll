declare void @_Bio__println (i64)
define void @_B_main () {
  %R0 = alloca i1, align 8
  %R1 = alloca i1, align 8
  %R2 = alloca i1, align 8
  %R3 = call i1 @_B_foo ()
  store i1 %R3, i1* %R0, align 8
  %R4 = load i1, i1* %R0, align 8
  br i1 %R4, label %L1, label %L2
L1:
  call void @_B_bar (i64 100)
  store i1 0, i1* %R1, align 8
  br label %L3
L2:
  call void @_B_baz (i64 200)
  store i1 0, i1* %R2, align 8
  br label %L3
L3:
  ret void
}
define internal i1 @_B_foo () {
  ret i1 1
}
define internal void @_B_bar (i64 %R0) {
  %R1 = alloca i64, align 8
  %R2 = alloca i1, align 8
  store i64 %R0, i64* %R1, align 8
  %R3 = load i64, i64* %R1, align 8
  call void @_Bio__println (i64 %R3)
  store i1 0, i1* %R2, align 8
  ret void
}
define internal void @_B_baz (i64 %R0) {
  %R1 = alloca i64, align 8
  %R2 = alloca i1, align 8
  store i64 %R0, i64* %R1, align 8
  %R3 = load i64, i64* %R1, align 8
  call void @_Bio__println (i64 %R3)
  store i1 0, i1* %R2, align 8
  ret void
}
