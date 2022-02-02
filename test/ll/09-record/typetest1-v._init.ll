%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
@_Bi04root0 = constant {i32, i32, i64, {i32}*, [2 x i64]} {i32 0, i32 2, i64 1, {i32}* null, [2 x i64] [i64 257, i64 513]}
@_Bi04root4 = constant {i32, i32, i64, {i32}*, [2 x i64]} {i32 1, i32 2, i64 1, {i32}* null, [2 x i64] [i64 259, i64 515]}
@_Bi04root5 = constant {i32, i32, i64, {i32}*, [0 x i64]} {i32 2, i32 0, i64 771, {i32}* null, [0 x i64] []}
@.subtype0 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x {i8 addrspace(1)*, i32}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_record_subtype_contains, i32 2, [2 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i32 128}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i32 256}]}, align 8
@_Bt04root1 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x {i8 addrspace(1)*, i32}]}* @.subtype0 to %UniformSubtype*)]}
@.subtype1 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x {i8 addrspace(1)*, i32}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_record_subtype_contains, i32 2, [2 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i32 129}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i32 257}]}, align 8
@_Bt04root2 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x {i8 addrspace(1)*, i32}]}* @.subtype1 to %UniformSubtype*)]}
@.subtype2 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [3 x {i8 addrspace(1)*, i32}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_record_subtype_contains, i32 3, [3 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901102), i32 128}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i32 256}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i32 256}]}, align 8
@_Bt04root3 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [3 x {i8 addrspace(1)*, i32}]}* @.subtype2 to %UniformSubtype*)]}
@.subtype3 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_map_subtype_contains, i32 384}, align 8
@_Bt04root6 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32}* @.subtype3 to %UniformSubtype*)]}
@.subtype4 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_map_subtype_contains, i32 385}, align 8
@_Bt04root7 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32}* @.subtype4 to %UniformSubtype*)]}
declare i1 @_bal_record_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare i1 @_bal_map_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
