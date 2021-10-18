%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_Bi04root0 = constant {i32} {i32 8386559}
@_Bt04root1 = constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_map_type_contains, i32 8386559}
declare i1 @_bal_map_type_contains(%TypeTestVTable*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
