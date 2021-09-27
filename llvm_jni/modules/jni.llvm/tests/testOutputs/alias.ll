@g = global i64 5

@0 = alias i64, i64* @g

define i64 @main() {
  %1 = load i64, i64* @0, align 4
  ret i64 %1
}
