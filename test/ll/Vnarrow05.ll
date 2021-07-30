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
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %41, label %11
11:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %12, i8 addrspace(1)** %x
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 504403158265495552
  store i1 %17, i1* %2
  %18 = load i1, i1* %2
  br i1 %18, label %19, label %37
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %20)
  store i64 %21, i64* %3
  store i1 1, i1* %b
  store i64 0, i64* %i
  br label %22
22:
  %23 = load i64, i64* %i
  %24 = icmp slt i64 %23, 2
  store i1 %24, i1* %4
  %25 = load i1, i1* %4
  br i1 %25, label %27, label %26
26:
  br label %37
27:
  %28 = load i1, i1* %b
  br i1 %28, label %29, label %33
29:
  %30 = load i64, i64* %3
  %31 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %30, i64 1)
  %32 = extractvalue {i64, i1} %31, 1
  br i1 %32, label %46, label %42
33:
  br label %34
34:
  %35 = load i64, i64* %i
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %i
  br label %22
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
39:
  %40 = load i64, i64* %7
  call void @_bal_panic(i64 %40)
  unreachable
41:
  call void @_bal_panic(i64 1796)
  unreachable
42:
  %43 = extractvalue {i64, i1} %31, 0
  store i64 %43, i64* %5
  %44 = load i64, i64* %5
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %44)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %x
  br label %26
46:
  store i64 3329, i64* %7
  br label %39
}
