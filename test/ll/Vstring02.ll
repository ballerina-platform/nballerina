@_bal_stack_guard = external global i8*
@.str0 = internal global {i8, [7 x i8]} {i8 5, [7 x i8] c"hello\00\00"}
@.str1 = internal global {i8, [7 x i8]} {i8 2, [7 x i8] c"hi\00\00\00\00\00"}
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  %8 = bitcast {i8, [7 x i8]}* @.str0 to i8*
  %9 = addrspacecast i8* %8 to i8 addrspace(1)*
  %10 = getelementptr i8, i8 addrspace(1)* %9, i64 720575940379279360
  call void @_B_greet(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %11 = call i8 addrspace(1)* @_B_greeting()
  store i8 addrspace(1)* %11, i8 addrspace(1)** %2
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
13:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_greet(i8 addrspace(1)* %0) {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %8, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %7)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
8:
  call void @_bal_panic(i64 2052)
  unreachable
}
define internal i8 addrspace(1)* @_B_greeting() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %8, label %4
4:
  %5 = bitcast {i8, [7 x i8]}* @.str1 to i8*
  %6 = addrspacecast i8* %5 to i8 addrspace(1)*
  %7 = getelementptr i8, i8 addrspace(1)* %6, i64 720575940379279360
  ret i8 addrspace(1)* %7
8:
  call void @_bal_panic(i64 3076)
  unreachable
}
