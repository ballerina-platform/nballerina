define void @foo1() {
  ret void
}
define void @foo2(i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = alloca i64
  store i64 %0, ptr %3
  store i64 %1, ptr %4
  ret void
}
define i64 @foo3() {
  ret i64 21
}
define i64 @foo4(i64 %0, i64 %1) {
  %3 = alloca i64
  %4 = alloca i64
  store i64 %0, ptr %3
  store i64 %1, ptr %4
  %5 = load i64, ptr %4
  ret i64 %5
}
define void @test() {
  %1 = alloca i64
  %2 = alloca i64
  call void @foo1()
  call void @foo2(i64 42, i64 43)
  %3 = call i64 @foo3()
  store i64 %3, ptr %1
  %4 = call i64 @foo4(i64 12, i64 13)
  store i64 %4, ptr %2
  ret void
}
