@g1 = external global i64
define i32 @main() {
  ret i32 ptrtoint(i64* @g1 to i32)
}
