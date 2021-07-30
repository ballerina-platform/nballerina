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
  %3 = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %11, i8 addrspace(1)** %n
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 504403158265495552
  store i1 %16, i1* %2
  %17 = load i1, i1* %2
  br i1 %17, label %18, label %31
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %3
  store i64 1, i64* %i
  br label %21
21:
  %22 = load i64, i64* %i
  %23 = icmp eq i64 %22, 0
  store i1 %23, i1* %4
  %24 = load i1, i1* %4
  br i1 %24, label %25, label %29
25:
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %n
  %27 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %28 = extractvalue {i64, i1} %27, 1
  br i1 %28, label %38, label %35
29:
  %30 = load i64, i64* %3
  ret i64 %30
31:
  ret i64 0
32:
  %33 = load i64, i64* %6
  call void @_bal_panic(i64 %33)
  unreachable
34:
  call void @_bal_panic(i64 1796)
  unreachable
35:
  %36 = extractvalue {i64, i1} %27, 0
  store i64 %36, i64* %5
  %37 = load i64, i64* %5
  ret i64 %37
38:
  store i64 3329, i64* %6
  br label %32
}
