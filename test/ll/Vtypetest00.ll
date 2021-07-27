@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %31, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 504403158265495552
  store i1 %16, i1* %1
  %17 = load i1, i1* %1
  br i1 %17, label %18, label %21
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %2
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %21
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %23 = addrspacecast i8 addrspace(1)* %22 to i8*
  %24 = ptrtoint i8* %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = icmp eq i64 %25, 720575940379279360
  store i1 %26, i1* %4
  %27 = load i1, i1* %4
  br i1 %27, label %28, label %30
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %29, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %30
30:
  ret void
31:
  call void @_bal_panic(i64 772)
  unreachable
}
