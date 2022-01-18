%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
@.dec0 = internal unnamed_addr constant [2 x i8] c"1\00", align 8
@.dec1 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
@.dec2 = internal unnamed_addr constant [2 x i8] c"3\00", align 8
@.subtype0 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, i32, [3 x i8*]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_decimal_subtype_contains, i32 3, i32 1, [3 x i8*] [i8* bitcast([2 x i8]* @.dec0 to i8*), i8* bitcast([2 x i8]* @.dec1 to i8*), i8* bitcast([2 x i8]* @.dec2 to i8*)]}, align 8
@_Bt04root0 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 512, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, i32, [3 x i8*]}* @.subtype0 to %UniformSubtype*)]}
declare i1 @_bal_decimal_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
