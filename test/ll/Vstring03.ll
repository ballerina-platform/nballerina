@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 5, [7 x i8] c"hello\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i8, [7 x i8]} {i8 3, [7 x i8] c"bye\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %s = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %15, label %6
6:
  %7 = bitcast {i8, [7 x i8]}* @.str0 to i8*
  %8 = addrspacecast i8* %7 to i8 addrspace(1)*
  %9 = getelementptr i8, i8 addrspace(1)* %8, i64 720575940379279360
  store i8 addrspace(1)* %9, i8 addrspace(1)** %s
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %11 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %12 = addrspacecast i8* %11 to i8 addrspace(1)*
  %13 = getelementptr i8, i8 addrspace(1)* %12, i64 720575940379279360
  store i8 addrspace(1)* %13, i8 addrspace(1)** %s
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
15:
  call void @_bal_panic(i64 772)
  unreachable
}
