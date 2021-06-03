target triple = "x86_64-pc-linux-gnu"
define dso_local i64 @foo1 ( ) {
  ret i64 42
}
define dso_local i64 @foo2 ( ) {
  %R0 = alloca i64 , align 8
  store i64 42 , i64* %R0 , align 8
  %R1 = load i64 , i64* %R0 , align 8
  ret i64 %R1
}
