%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_Bi04root0 = constant {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32} {i32 0, i8 addrspace(1)*(i8 addrspace(1)*, i64)* @_bal_list_get, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_set, i32 1152}
@_Be04root0 = constant i32 0
@_Be04root2 = constant i32 -1
@.subtype0 = internal constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_array_subtype_contains, i32 128}
@_Bt04root1 = constant {i32, i32, [1 x %TypeTestVTable*]} {i32 0, i32 262144, [1 x %TypeTestVTable*] [%TypeTestVTable* bitcast({i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32}* @.subtype0 to %TypeTestVTable*)]}
declare i8 addrspace(1)* @_bal_list_get(i8 addrspace(1)*, i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i1 @_bal_array_subtype_contains(%TypeTestVTable*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
