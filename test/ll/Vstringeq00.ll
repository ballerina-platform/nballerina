@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [4 x i8]} {i16 2, i16 1, [4 x i8] c"\C2\80\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [4 x i8]} {i16 2, i16 1, [4 x i8] c"\C2\81\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %s1 = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %19, label %6
6:
  %7 = bitcast {i16, i16, [4 x i8]}* @.str0 to i8*
  %8 = addrspacecast i8* %7 to i8 addrspace(1)*
  %9 = getelementptr i8, i8 addrspace(1)* %8, i64 720575940379279361
  store i8 addrspace(1)* %9, i8 addrspace(1)** %s1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %11 = bitcast {i16, i16, [4 x i8]}* @.str1 to i8*
  %12 = addrspacecast i8* %11 to i8 addrspace(1)*
  %13 = getelementptr i8, i8 addrspace(1)* %12, i64 720575940379279361
  %14 = call i1 @_bal_eq(i8 addrspace(1)* %10, i8 addrspace(1)* %13)
  store i1 %14, i1* %1
  %15 = load i1, i1* %1
  %16 = zext i1 %15 to i64
  %17 = or i64 %16, 72057594037927936
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
19:
  call void @_bal_panic(i64 772)
  unreachable
}
