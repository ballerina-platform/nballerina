@_bal_stack_guard = external global i8*
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"not string\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %s = alloca i8 addrspace(1)*
  %i = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)** %s
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %i
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_B_foo(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %i
  call void @_B_foo(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
10:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %x.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %21, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = addrspacecast i8 addrspace(1)* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 720575940379279360
  %14 = xor i1 1, %13
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %16, label %18
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %17, i8 addrspace(1)** %x.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %20
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %19, i8 addrspace(1)** %x.2
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %20
20:
  ret void
21:
  call void @_bal_panic(i64 2564)
  unreachable
}
