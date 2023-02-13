define i64 @main() {
  %1 = alloca i64
  store i64 42, ptr %1
  store i64 43, ptr %1
  store i64 44, ptr %1
  store i64 9223372036854775807, ptr %1
  store i64 -9223372036854775808, ptr %1
  ret void
}
