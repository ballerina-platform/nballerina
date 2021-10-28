@_Bi04root0 = constant {i32, i32, [3 x i32]} {i32 0, i32 3, [3 x i32] [i32 2, i32 256, i32 128]}
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
