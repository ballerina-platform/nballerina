@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 3, [7 x i8] c"foo\00\00\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i8, [7 x i8]} {i8 3, [7 x i8] c"bar\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %19, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_mapping_construct(i64 2)
  %8 = bitcast {i8, [7 x i8]}* @.str0 to i8*
  %9 = addrspacecast i8* %8 to i8 addrspace(1)*
  %10 = getelementptr i8, i8 addrspace(1)* %9, i64 720575940379279360
  %11 = zext i1 1 to i64
  %12 = or i64 %11, 72057594037927936
  %13 = getelementptr i8, i8 addrspace(1)* null, i64 %12
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* %10, i8 addrspace(1)* %13)
  %14 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %15 = addrspacecast i8* %14 to i8 addrspace(1)*
  %16 = getelementptr i8, i8 addrspace(1)* %15, i64 720575940379279360
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* %16, i8 addrspace(1)* null)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %m
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
19:
  call void @_bal_panic(i64 772)
  unreachable
}
