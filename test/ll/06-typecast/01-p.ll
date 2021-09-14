@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  %9 = call i8 addrspace(1)* @_B_f()
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 504403158265495552
  br i1 %14, label %19, label %24
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %10)
  store i64 %20, i64* %2
  %21 = load i64, i64* %2
  store i64 %21, i64* %i
  %22 = load i64, i64* %i
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %4
  br label %15
}
define i8 addrspace(1)* @_B_f() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %8, label %4
4:
  %5 = zext i1 0 to i64
  %6 = or i64 %5, 72057594037927936
  %7 = getelementptr i8, i8 addrspace(1)* null, i64 %6
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308)
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
