%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
@_Bi04root1 = constant {i32, i32, i64, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*, [0 x i64]} {i32 0, i32 0, i64 0, i8 addrspace(1)*(i8 addrspace(1)*, i64)* @_bal_list_generic_get_tagged, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_generic_set_tagged, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_generic_inexact_set_tagged, i64(i8 addrspace(1)*, i64)* @_bal_list_generic_get_int, i64(i8 addrspace(1)*, i64, i64)* @_bal_list_generic_set_int, i64(i8 addrspace(1)*, i64, i64)* @_bal_list_generic_inexact_set_int, double(i8 addrspace(1)*, i64)* @_bal_list_generic_get_float, i64(i8 addrspace(1)*, i64, double)* @_bal_list_generic_set_float, i64(i8 addrspace(1)*, i64, double)* @_bal_list_generic_inexact_set_float, i64 16777215, {i32}* null, [0 x i64] []}
@.dec0 = internal unnamed_addr constant [4 x i8] c"2.3\00", align 8
@.subtype0 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, i32, [1 x i8*]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_decimal_subtype_contains, i32 1, i32 1, [1 x i8*] [i8* bitcast([4 x i8]* @.dec0 to i8*)]}, align 8
@_Bt04root0 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 512, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, i32, [1 x i8*]}* @.subtype0 to %UniformSubtype*)]}
declare i8 addrspace(1)* @_bal_list_generic_get_tagged(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_tagged(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i64 @_bal_list_generic_inexact_set_tagged(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i64 @_bal_list_generic_get_int(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_int(i8 addrspace(1)*, i64, i64)
declare i64 @_bal_list_generic_inexact_set_int(i8 addrspace(1)*, i64, i64)
declare double @_bal_list_generic_get_float(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_float(i8 addrspace(1)*, i64, double)
declare i64 @_bal_list_generic_inexact_set_float(i8 addrspace(1)*, i64, double)
declare i1 @_bal_decimal_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
