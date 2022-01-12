@_Bi04root0 = constant {i32, i32, i64, {i32}*, [1 x i64]} {i32 0, i32 1, i64 1, {i32}* null, [1 x i64] [i64 5]}
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
