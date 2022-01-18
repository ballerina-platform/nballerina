%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
@.subtype0 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_true_subtype_contains}, align 8
@_Bt04root0 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 2, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*}* @.subtype0 to %UniformSubtype*)]}
@.subtype1 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_false_subtype_contains}, align 8
@_Bt04root1 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 2, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*}* @.subtype1 to %UniformSubtype*)]}
declare i1 @_bal_true_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare i1 @_bal_false_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
