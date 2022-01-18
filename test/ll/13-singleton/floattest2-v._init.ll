%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
@.subtype0 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, i32, [4 x double]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_float_subtype_contains, i32 4, i32 1, [4 x double] [double 0x7FF8000000000000, double 0xFFF0000000000000, double 0.0, double 0x7FF0000000000000]}, align 8
@_Bt04root0 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 256, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, i32, [4 x double]}* @.subtype0 to %UniformSubtype*)]}
declare i1 @_bal_float_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
