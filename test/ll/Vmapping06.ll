@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 1, [7 x i8] c"x\00\00\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i8, [7 x i8]} {i8 1, [7 x i8] c"y\00\00\00\00\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i8, [7 x i8]} {i8 1, [7 x i8] c"z\00\00\00\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i8, [7 x i8]} {i8 5, [7 x i8] c"hello\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_Bmap__length(i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %30, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_mapping_construct(i64 3)
  %9 = bitcast {i8, [7 x i8]}* @.str0 to i8*
  %10 = addrspacecast i8* %9 to i8 addrspace(1)*
  %11 = getelementptr i8, i8 addrspace(1)* %10, i64 720575940379279360
  %12 = zext i1 1 to i64
  %13 = or i64 %12, 72057594037927936
  %14 = getelementptr i8, i8 addrspace(1)* null, i64 %13
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* %11, i8 addrspace(1)* %14)
  %15 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %16 = addrspacecast i8* %15 to i8 addrspace(1)*
  %17 = getelementptr i8, i8 addrspace(1)* %16, i64 720575940379279360
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* %17, i8 addrspace(1)* %18)
  %19 = bitcast {i8, [7 x i8]}* @.str2 to i8*
  %20 = addrspacecast i8* %19 to i8 addrspace(1)*
  %21 = getelementptr i8, i8 addrspace(1)* %20, i64 720575940379279360
  %22 = bitcast {i8, [7 x i8]}* @.str3 to i8*
  %23 = addrspacecast i8* %22 to i8 addrspace(1)*
  %24 = getelementptr i8, i8 addrspace(1)* %23, i64 720575940379279360
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* %21, i8 addrspace(1)* %24)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %25, i8 addrspace(1)** %m
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %27 = call i64 @_Bmap__length(i8 addrspace(1)* %26)
  store i64 %27, i64* %2
  %28 = load i64, i64* %2
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28)
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
30:
  call void @_bal_panic(i64 772)
  unreachable
}
