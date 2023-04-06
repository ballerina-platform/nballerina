@_Bi04root0 = constant {i32, i32, i64, ptr, [2 x i64]} {i32 0, i32 2, i64 1, ptr null, [2 x i64] [i64 9, i64 11]}
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
