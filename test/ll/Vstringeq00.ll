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
  br i1 %5, label %13, label %6
6:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279361), i8 addrspace(1)** %s1
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %8 = call i1 @_bal_eq(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [4 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279361))
  store i1 %8, i1* %1
  %9 = load i1, i1* %1
  %10 = zext i1 %9 to i64
  %11 = or i64 %10, 72057594037927936
  %12 = getelementptr i8, i8 addrspace(1)* null, i64 %11
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
13:
  call void @_bal_panic(i64 772)
  unreachable
}
