%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_Bi04root0 = constant {i32, i32, i32, [2 x i32]} {i32 0, i32 0, i32 2, [2 x i32] [i32 256, i32 128]}
@_Bi04root2 = constant {i32, i32, i32, [2 x i32]} {i32 1, i32 0, i32 2, [2 x i32] [i32 257, i32 129]}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"floatField\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"intField\00\00\00\00"}, align 8
@.subtype0 = internal constant {i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32, [2 x {i8 addrspace(1)*, i32}]} {i1(%TypeTestVTable*, i8 addrspace(1)*)* @_bal_record_subtype_contains, i32 2, [2 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i32 256}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i32 128}]}
@_Bt04root1 = constant {i32, i32, [1 x %TypeTestVTable*]} {i32 0, i32 524288, [1 x %TypeTestVTable*] [%TypeTestVTable* bitcast({i1(%TypeTestVTable*, i8 addrspace(1)*)*, i32, [2 x {i8 addrspace(1)*, i32}]}* @.subtype0 to %TypeTestVTable*)]}
@_Bi0m4root6types20 = alias {i32, i32, i32, [2 x i32]}, {i32, i32, i32, [2 x i32]}* @_Bi04root0
@_Bi0m4root6types10 = alias {i32, i32, i32, [2 x i32]}, {i32, i32, i32, [2 x i32]}* @_Bi04root0
@_Bt0m4root6types21 = alias {i32, i32, [1 x %TypeTestVTable*]}, {i32, i32, [1 x %TypeTestVTable*]}* @_Bt04root1
@_Bt0m4root6types11 = alias {i32, i32, [1 x %TypeTestVTable*]}, {i32, i32, [1 x %TypeTestVTable*]}* @_Bt04root1
declare i1 @_bal_record_subtype_contains(%TypeTestVTable*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
