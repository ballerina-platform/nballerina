@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_B_foo(i8 addrspace(1)* %6)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
7:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i64
  %b = alloca i1
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %13 = addrspacecast i8 addrspace(1)* %12 to i8*
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 504403158265495552
  store i1 %16, i1* %2
  %17 = load i1, i1* %2
  br i1 %17, label %18, label %30
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %3
  store i1 1, i1* %b
  br label %21
21:
  br label %22
22:
  %23 = load i1, i1* %b
  br i1 %23, label %25, label %29
24:
  br label %30
25:
  %26 = load i64, i64* %3
  %27 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %26, i64 1)
  %28 = extractvalue {i64, i1} %27, 1
  br i1 %28, label %39, label %35
29:
  br label %21
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
32:
  %33 = load i64, i64* %6
  call void @_bal_panic(i64 %33)
  unreachable
34:
  call void @_bal_panic(i64 1796)
  unreachable
35:
  %36 = extractvalue {i64, i1} %27, 0
  store i64 %36, i64* %4
  %37 = load i64, i64* %4
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %37)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %x
  br label %24
39:
  store i64 3329, i64* %6
  br label %32
}
