%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_Bi04root0 = constant {i32, i32} {i32 0, i32 8386559}
@_Bi04root1 = constant {i32, i32} {i32 0, i32 8386559}
@.subtype0 = internal constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_array_subtype_contains, i32 8386559}
@_Bt04root2 = constant {i32, i32, [1 x %TypeTestVTable*]} {i32 0, i32 262144, [1 x %TypeTestVTable*] [%TypeTestVTable* bitcast({i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32}* @.subtype0 to %TypeTestVTable*)]}
@.subtype1 = internal constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_map_subtype_contains, i32 8386559}
@_Bt04root3 = constant {i32, i32, [1 x %TypeTestVTable*]} {i32 0, i32 524288, [1 x %TypeTestVTable*] [%TypeTestVTable* bitcast({i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32}* @.subtype1 to %TypeTestVTable*)]}
declare i1 @_bal_array_subtype_contains(%TypeTestVTable*, i8 addrspace(1)*)
declare i1 @_bal_map_subtype_contains(%TypeTestVTable*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
