@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %x.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %29, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %x
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 504403158265495552
  store i1 %14, i1* %1
  %15 = load i1, i1* %1
  br i1 %15, label %16, label %19
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %18 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %17)
  store i64 %18, i64* %x.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %19
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = addrspacecast i8 addrspace(1)* %20 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = icmp eq i64 %23, 720575940379279360
  store i1 %24, i1* %3
  %25 = load i1, i1* %3
  br i1 %25, label %26, label %28
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %27, i8 addrspace(1)** %x.2
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %28
28:
  ret void
29:
  call void @_bal_panic(i64 772)
  unreachable
}
