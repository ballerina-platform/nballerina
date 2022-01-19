%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
@.subtype0 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_int_subtype_contains, i64 1, [1 x {i64, i64}] [{i64, i64} {i64 0, i64 255}]}, align 8
@_Bt04root0 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 128, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]}* @.subtype0 to %UniformSubtype*)]}
declare i1 @_bal_int_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
