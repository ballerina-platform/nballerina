%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
%Type0 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32}
%Type1 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32}
@_Bi04root0 = constant {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*} {i32 0, i8 addrspace(1)*(i8 addrspace(1)*, i64)* @_bal_list_int_array_get_tagged, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_int_array_set_tagged, i64(i8 addrspace(1)*, i64)* @_bal_list_int_array_get_int, i64(i8 addrspace(1)*, i64, i64)* @_bal_list_int_array_set_int, double(i8 addrspace(1)*, i64)* null, i64(i8 addrspace(1)*, i64, double)* @_bal_list_int_array_set_float, i64 257, {i32}* null}
@_Bi04root1 = constant {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*} {i32 1, i8 addrspace(1)*(i8 addrspace(1)*, i64)* @_bal_list_generic_get_tagged, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_generic_set_tagged, i64(i8 addrspace(1)*, i64)* @_bal_list_generic_get_int, i64(i8 addrspace(1)*, i64, i64)* @_bal_list_generic_set_int, double(i8 addrspace(1)*, i64)* @_bal_list_generic_get_float, i64(i8 addrspace(1)*, i64, double)* @_bal_list_generic_set_float, i64 2049, {i32}* null}
@_Bi04root2 = constant {i32, i32, i64, {i32}*, [3 x i64]} {i32 0, i32 3, i64 1, {i32}* null, [3 x i64] [i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member0 to i64), i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member0 to i64), i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member1 to i64)]}
@.subtype0 = internal constant %Type0 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_array_subtype_contains, i32 128}, align 8
@.member0 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 262144, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type0* @.subtype0 to %UniformSubtype*)]}
@.subtype1 = internal constant %Type1 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_array_subtype_contains, i32 1024}, align 8
@.member1 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 262144, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type1* @.subtype1 to %UniformSubtype*)]}
declare i8 addrspace(1)* @_bal_list_int_array_get_tagged(i8 addrspace(1)*, i64)
declare i64 @_bal_list_int_array_set_tagged(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i64 @_bal_list_int_array_get_int(i8 addrspace(1)*, i64)
declare i64 @_bal_list_int_array_set_int(i8 addrspace(1)*, i64, i64)
declare i64 @_bal_list_int_array_set_float(i8 addrspace(1)*, i64, double)
declare i8 addrspace(1)* @_bal_list_generic_get_tagged(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_tagged(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i64 @_bal_list_generic_get_int(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_int(i8 addrspace(1)*, i64, i64)
declare double @_bal_list_generic_get_float(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_float(i8 addrspace(1)*, i64, double)
declare i1 @_bal_array_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
