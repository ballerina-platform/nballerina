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
  %x.1 = alloca i64
  %b = alloca i1
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %33, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %10, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 504403158265495552
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %17, label %29
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %18)
  store i64 %19, i64* %x.1
  store i1 1, i1* %b
  br label %20
20:
  br label %21
21:
  %22 = load i1, i1* %b
  br i1 %22, label %24, label %28
23:
  br label %29
24:
  %25 = load i64, i64* %x.1
  %26 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %25, i64 1)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %38, label %34
28:
  br label %20
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
31:
  %32 = load i64, i64* %5
  call void @_bal_panic(i64 %32)
  unreachable
33:
  call void @_bal_panic(i64 1796)
  unreachable
34:
  %35 = extractvalue {i64, i1} %26, 0
  store i64 %35, i64* %3
  %36 = load i64, i64* %3
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %36)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %x
  br label %23
38:
  store i64 3329, i64* %5
  br label %31
}
