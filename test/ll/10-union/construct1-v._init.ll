%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_Bi04root0 = constant {i32, i32, i32, [1 x i32]} {i32 0, i32 0, i32 1, [1 x i32] [i32 128]}
@_Be04root0 = constant i32 0
@.subtype0 = internal constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32, [1 x {i8 addrspace(1)*, i32}]} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_record_subtype_contains, i32 1, [1 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i32 128}]}
@_Bt04root1 = constant {i32, i32, [1 x %TypeTestVTable*]} {i32 0, i32 524288, [1 x %TypeTestVTable*] [%TypeTestVTable* bitcast({i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32, [1 x {i8 addrspace(1)*, i32}]}* @.subtype0 to %TypeTestVTable*)]}
declare i1 @_bal_record_subtype_contains(%TypeTestVTable*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
