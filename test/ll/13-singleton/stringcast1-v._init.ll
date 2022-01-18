%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
@.subtype0 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, i16, i16, [3 x i8 addrspace(1)*]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_string_subtype_contains, i32 3, i16 1, i16 1, [3 x i8 addrspace(1)*] [i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038128226), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475918266823271), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620703602)]}, align 8
@_Bt04root0 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 1024, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, i16, i16, [3 x i8 addrspace(1)*]}* @.subtype0 to %UniformSubtype*)]}
declare i1 @_bal_string_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
