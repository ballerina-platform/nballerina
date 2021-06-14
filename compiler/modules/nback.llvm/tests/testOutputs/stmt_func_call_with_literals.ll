define void @foo1 () {
  ret void
}
define void @foo2 (i64 %_0, i64 %_1) {
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %_2, align 8
  store i64 %_1, i64* %_3, align 8
  ret void
}
define i64 @foo3 () {
  ret i64 21
}
define i64 @foo4 (i64 %_0, i64 %_1) {
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %_2, align 8
  store i64 %_1, i64* %_3, align 8
  %_4 = load i64, i64* %_3, align 8
  ret i64 %_4
}
define void @test () {
  %_0 = alloca i64, align 8
  %_1 = alloca i64, align 8
  call void @foo1 ()
  call void @foo2 (i64 42, i64 43)
  %_2 = call i64 @foo3 ()
  store i64 %_2, i64* %_0, align 8
  %_3 = call i64 @foo4 (i64 12, i64 13)
  store i64 %_3, i64* %_1, align 8
  ret void
}
