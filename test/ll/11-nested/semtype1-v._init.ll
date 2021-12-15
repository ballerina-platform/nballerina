%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
%Type0 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}
%Type1 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32}
%Type2 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}
%Type3 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}
%Type4 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}
%Type5 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}
%Type6 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [0 x i32]}
%Type7 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}
%Type8 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}
@_Bi04root0 = constant {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*} {i32 0, i8 addrspace(1)*(i8 addrspace(1)*, i64)* @_bal_list_generic_get_tagged, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_generic_set_tagged, i64(i8 addrspace(1)*, i64)* @_bal_list_generic_get_int, i64(i8 addrspace(1)*, i64, i64)* @_bal_list_generic_set_int, double(i8 addrspace(1)*, i64)* @_bal_list_generic_get_float, i64(i8 addrspace(1)*, i64, double)* @_bal_list_generic_set_float, i64 2049, {i32}* null}
@_Bi04root1 = constant {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*} {i32 1, i8 addrspace(1)*(i8 addrspace(1)*, i64)* @_bal_list_generic_get_tagged, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_generic_set_tagged, i64(i8 addrspace(1)*, i64)* @_bal_list_generic_get_int, i64(i8 addrspace(1)*, i64, i64)* @_bal_list_generic_set_int, double(i8 addrspace(1)*, i64)* @_bal_list_generic_get_float, i64(i8 addrspace(1)*, i64, double)* @_bal_list_generic_set_float, i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member0 to i64), {i32}* null}
@.subtype0 = internal constant %Type0 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 3]}, align 8
@.member0 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 128, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type0* @.subtype0 to %UniformSubtype*)]}
@.subtype1 = internal constant %Type1 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_array_subtype_contains, i32 1024}, align 8
@.member1 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 262144, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type1* @.subtype1 to %UniformSubtype*)]}
@.subtype2 = internal constant %Type2 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 1]}, align 8
@.member2 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 262144, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type2* @.subtype2 to %UniformSubtype*)]}
@_Bi04root2 = constant {i32, i32, i64, [3 x i64]} {i32 0, i32 3, i64 1, [3 x i64] [i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member1 to i64), i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member0 to i64), i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member2 to i64)]}
@.subtype3 = internal constant %Type3 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 0]}, align 8
@.member3 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type3* @.subtype3 to %UniformSubtype*)]}
@_Bi04root3 = constant {i32, i32, i64, [2 x i64]} {i32 1, i32 2, i64 1, [2 x i64] [i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member3 to i64), i64 257]}
@.subtype4 = internal constant %Type4 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 1]}, align 8
@.member4 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 128, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type4* @.subtype4 to %UniformSubtype*)]}
@.subtype5 = internal constant %Type5 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 2]}, align 8
@.member5 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 2, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type5* @.subtype5 to %UniformSubtype*)]}
@_Bi04root4 = constant {i32, i32, i64, [4 x i64]} {i32 2, i32 4, i64 1, [4 x i64] [i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member4 to i64), i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member5 to i64), i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member5 to i64), i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member5 to i64)]}
@_Bi04root5 = constant {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*} {i32 2, i8 addrspace(1)*(i8 addrspace(1)*, i64)* @_bal_list_generic_get_tagged, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_generic_set_tagged, i64(i8 addrspace(1)*, i64)* @_bal_list_generic_get_int, i64(i8 addrspace(1)*, i64, i64)* @_bal_list_generic_set_int, double(i8 addrspace(1)*, i64)* @_bal_list_generic_get_float, i64(i8 addrspace(1)*, i64, double)* @_bal_list_generic_set_float, i64 ptrtoint({i32, i32, [2 x %UniformSubtype*]}* @.member6 to i64), {i32}* null}
@.subtype6 = internal constant %Type6 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@.subtype7 = internal constant %Type7 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 2]}, align 8
@.member6 = internal constant {i32, i32, [2 x %UniformSubtype*]} {i32 0, i32 786432, [2 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type6* @.subtype6 to %UniformSubtype*), %UniformSubtype* bitcast(%Type7* @.subtype7 to %UniformSubtype*)]}
@.subtype8 = internal constant %Type8 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 2]}, align 8
@.member7 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 262144, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type8* @.subtype8 to %UniformSubtype*)]}
@_Bi04root6 = constant {i32, i32, i64, [3 x i64]} {i32 3, i32 3, i64 1, [3 x i64] [i64 257, i64 257, i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member7 to i64)]}
@_Be04root2 = constant i32 0
@_Be04root4 = constant i32 2
@_Bt04root7 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type5* @.subtype5 to %UniformSubtype*)]}
@.subtype9 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 0]}, align 8
@_Bt04root8 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}* @.subtype9 to %UniformSubtype*)]}
declare i8 addrspace(1)* @_bal_list_generic_get_tagged(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_tagged(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i64 @_bal_list_generic_get_int(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_int(i8 addrspace(1)*, i64, i64)
declare double @_bal_list_generic_get_float(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_float(i8 addrspace(1)*, i64, double)
declare i1 @_bal_precomputed_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare i1 @_bal_array_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
