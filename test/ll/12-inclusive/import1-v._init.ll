%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
%Type0 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [0 x i32]}
%Type1 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [3 x i32]}
%Type2 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [0 x i32]}
%Type3 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [3 x i32]}
%Type4 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [0 x i32]}
%Type5 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [3 x i32]}
@_Bi04root0 = constant {i32, i32, i64, {i32}*, [2 x i64]} {i32 0, i32 2, i64 ptrtoint({i32, i32, [2 x %UniformSubtype*]}* @.member0 to i64), {i32}* null, [2 x i64] [i64 513, i64 257]}
@.subtype0 = internal constant %Type0 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@.subtype1 = internal constant %Type1 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 3, [3 x i32] [i32 0, i32 1, i32 2]}, align 8
@.member0 = internal constant {i32, i32, [2 x %UniformSubtype*]} {i32 2099107, i32 786432, [2 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type0* @.subtype0 to %UniformSubtype*), %UniformSubtype* bitcast(%Type1* @.subtype1 to %UniformSubtype*)]}
@_Bi04root3 = constant {i32, i32, i64, {i32}*, [2 x i64]} {i32 1, i32 2, i64 ptrtoint({i32, i32, [2 x %UniformSubtype*]}* @.member1 to i64), {i32}* null, [2 x i64] [i64 515, i64 259]}
@.subtype2 = internal constant %Type2 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@.subtype3 = internal constant %Type3 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 3, [3 x i32] [i32 0, i32 1, i32 2]}, align 8
@.member1 = internal constant {i32, i32, [2 x %UniformSubtype*]} {i32 2099107, i32 786432, [2 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type2* @.subtype2 to %UniformSubtype*), %UniformSubtype* bitcast(%Type3* @.subtype3 to %UniformSubtype*)]}
@_Bi0m4root6types20 = constant {i32, i32, i64, {i32}*, [2 x i64]} {i32 2, i32 2, i64 ptrtoint({i32, i32, [2 x %UniformSubtype*]}* @.member2 to i64), {i32}* null, [2 x i64] [i64 513, i64 257]}
@.subtype4 = internal constant %Type4 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@.subtype5 = internal constant %Type5 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 3, [3 x i32] [i32 0, i32 1, i32 2]}, align 8
@.member2 = internal constant {i32, i32, [2 x %UniformSubtype*]} {i32 2099107, i32 786432, [2 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type4* @.subtype4 to %UniformSubtype*), %UniformSubtype* bitcast(%Type5* @.subtype5 to %UniformSubtype*)]}
@.subtype6 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x i32]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 2, [2 x i32] [i32 0, i32 2]}, align 8
@_Bt04root1 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x i32]}* @.subtype6 to %UniformSubtype*)]}
@.subtype7 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x i32]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 2, [2 x i32] [i32 0, i32 2]}, align 8
@_Bt04root2 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x i32]}* @.subtype7 to %UniformSubtype*)]}
@_Bi0m4root6types10 = alias {i32, i32, i64, {i32}*, [2 x i64]}, {i32, i32, i64, {i32}*, [2 x i64]}* @_Bi04root0
@_Bt0m4root6types21 = alias {i32, i32, [1 x %UniformSubtype*]}, {i32, i32, [1 x %UniformSubtype*]}* @_Bt04root2
@_Bt0m4root6types11 = alias {i32, i32, [1 x %UniformSubtype*]}, {i32, i32, [1 x %UniformSubtype*]}* @_Bt04root1
declare i1 @_bal_precomputed_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
