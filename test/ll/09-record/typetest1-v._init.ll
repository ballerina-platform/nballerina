%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_Bi04root0 = constant {i32, i32, [2 x i32]} {i32 0, i32 2, [2 x i32] [i32 128, i32 256]}
@_Bt04root1 = constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32, [2 x {i8 addrspace(1)*, i32}]} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_record_type_contains, i32 2, [2 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i32 128}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i32 256}]}
@_Bt04root2 = constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32, [2 x {i8 addrspace(1)*, i32}]} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_record_type_contains, i32 2, [2 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i32 129}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i32 257}]}
@_Bt04root3 = constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32, [3 x {i8 addrspace(1)*, i32}]} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_record_type_contains, i32 3, [3 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i32 128}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i32 256}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i32 256}]}
@_Bi04root4 = constant {i32, i32, [2 x i32]} {i32 0, i32 2, [2 x i32] [i32 129, i32 257]}
@_Bi04root5 = constant {i32} {i32 385}
@_Bt04root6 = constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_map_type_contains, i32 384}
@_Bt04root7 = constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_map_type_contains, i32 385}
declare i1 @_bal_record_type_contains(%TypeTestVTable*, i8 addrspace(1)*)
declare i1 @_bal_map_type_contains(%TypeTestVTable*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
