@_Bi04root0 = constant {i32, i32, i64, [2 x i64]} {i32 0, i32 2, i64 257, [2 x i64] [i64 257, i64 257]}
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
