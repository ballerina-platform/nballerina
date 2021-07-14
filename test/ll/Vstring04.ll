@_bal_stack_guard = external global i8*
@.str0 = internal global {i8, [7 x i8]} {i8 5, [7 x i8] c"hello\00\00"}
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %20, label %8
8:
  %9 = bitcast {i8, [7 x i8]}* @.str0 to i8*
  %10 = addrspacecast i8* %9 to i8 addrspace(1)*
  %11 = getelementptr i8, i8 addrspace(1)* %10, i64 720575940379279360
  %12 = call i8 addrspace(1)* @_B_toAny(i8 addrspace(1)* %11)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 720575940379279360
  br i1 %17, label %21, label %24
18:
  %19 = load i64, i64* %4
  call void @_bal_panic(i64 %19)
  unreachable
20:
  call void @_bal_panic(i64 772)
  unreachable
21:
  store i8 addrspace(1)* %13, i8 addrspace(1)** %2
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %22, i8 addrspace(1)** %s
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
24:
  store i64 1027, i64* %4
  br label %18
}
define internal i8 addrspace(1)* @_B_toAny(i8 addrspace(1)* %0) {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %6 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  ret i8 addrspace(1)* %6
7:
  call void @_bal_panic(i64 2052)
  unreachable
}
