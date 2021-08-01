@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %8 = call i64 @_B_foo(i8 addrspace(1)* %7)
  store i64 %8, i64* %1
  %9 = load i64, i64* %1
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %9)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
11:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_foo(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %n = alloca i8 addrspace(1)*
  %2 = alloca i1
  %n.1 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %33, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %10, i8 addrspace(1)** %n
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 504403158265495552
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %17, label %30
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %19 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %18)
  store i64 %19, i64* %n.1
  store i64 1, i64* %i
  br label %20
20:
  %21 = load i64, i64* %i
  %22 = icmp eq i64 %21, 0
  store i1 %22, i1* %3
  %23 = load i1, i1* %3
  br i1 %23, label %24, label %28
24:
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %n
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %37, label %34
28:
  %29 = load i64, i64* %n.1
  ret i64 %29
30:
  ret i64 0
31:
  %32 = load i64, i64* %5
  call void @_bal_panic(i64 %32)
  unreachable
33:
  call void @_bal_panic(i64 1796)
  unreachable
34:
  %35 = extractvalue {i64, i1} %26, 0
  store i64 %35, i64* %4
  %36 = load i64, i64* %4
  ret i64 %36
37:
  store i64 3329, i64* %5
  br label %31
}
