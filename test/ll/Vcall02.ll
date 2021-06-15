declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = call i1 @_B_foo ()
  store i1 %_3, i1* %_0, align 8
  %_4 = load i1, i1* %_0, align 8
  br i1 %_4, label %L1, label %L2
L1:
  call void @_B_bar (i64 100)
  store i1 0, i1* %_1, align 8
  br label %L3
L2:
  call void @_B_baz (i64 200)
  store i1 0, i1* %_2, align 8
  br label %L3
L3:
  ret void
}
define internal i1 @_B_foo () {
  ret i1 1
}
define internal void @_B_bar (i64 %_0) {
  %x = alloca i64, align 8
  %_1 = alloca i1, align 8
  store i64 %_0, i64* %x, align 8
  %_2 = load i64, i64* %x, align 8
  call void @_Bio__println (i64 %_2)
  store i1 0, i1* %_1, align 8
  ret void
}
define internal void @_B_baz (i64 %_0) {
  %x = alloca i64, align 8
  %_1 = alloca i1, align 8
  store i64 %_0, i64* %x, align 8
  %_2 = load i64, i64* %x, align 8
  call void @_Bio__println (i64 %_2)
  store i1 0, i1* %_1, align 8
  ret void
}
