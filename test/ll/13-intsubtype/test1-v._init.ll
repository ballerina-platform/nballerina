%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
@.subtype0 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_int_subtype_contains, i64 1, [1 x {i64, i64}] [{i64, i64} {i64 -128, i64 127}]}, align 8
@_Bt04root0 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 128, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]}* @.subtype0 to %UniformSubtype*)]}
@.subtype1 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_int_subtype_contains, i64 1, [1 x {i64, i64}] [{i64, i64} {i64 -32768, i64 32767}]}, align 8
@_Bt04root1 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 128, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]}* @.subtype1 to %UniformSubtype*)]}
@.subtype2 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_int_subtype_contains, i64 1, [1 x {i64, i64}] [{i64, i64} {i64 -2147483648, i64 2147483647}]}, align 8
@_Bt04root2 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 128, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]}* @.subtype2 to %UniformSubtype*)]}
@.subtype3 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_int_subtype_contains, i64 1, [1 x {i64, i64}] [{i64, i64} {i64 0, i64 255}]}, align 8
@_Bt04root3 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 128, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]}* @.subtype3 to %UniformSubtype*)]}
@.subtype4 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_int_subtype_contains, i64 1, [1 x {i64, i64}] [{i64, i64} {i64 0, i64 65535}]}, align 8
@_Bt04root4 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 128, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]}* @.subtype4 to %UniformSubtype*)]}
@.subtype5 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_int_subtype_contains, i64 1, [1 x {i64, i64}] [{i64, i64} {i64 0, i64 4294967295}]}, align 8
@_Bt04root5 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 128, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i64, [1 x {i64, i64}]}* @.subtype5 to %UniformSubtype*)]}
declare i1 @_bal_int_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
