@_Bi04root0 = constant {i32, i32, i64, {i32}*, [0 x i64]} {i32 0, i32 0, i64 1025, {i32}* null, [0 x i64] []}
@_Bi04root1 = constant {i32, i32, i64, {i32}*, [0 x i64]} {i32 1, i32 0, i64 1281, {i32}* null, [0 x i64] []}
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
