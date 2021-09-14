@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) {
  %v = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i64
  %b = alloca i1
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %40, label %10
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
  br i1 %17, label %18, label %36
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %x.1
  store i1 1, i1* %b
  store i64 0, i64* %i
  br label %21
21:
  %22 = load i64, i64* %i
  %23 = icmp slt i64 %22, 2
  store i1 %23, i1* %3
  %24 = load i1, i1* %3
  br i1 %24, label %26, label %25
25:
  br label %36
26:
  %27 = load i1, i1* %b
  br i1 %27, label %28, label %32
28:
  %29 = load i64, i64* %x.1
  %30 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %46, label %42
32:
  br label %33
33:
  %34 = load i64, i64* %i
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %i
  br label %21
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052)
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
42:
  %43 = extractvalue {i64, i1} %30, 0
  store i64 %43, i64* %4
  %44 = load i64, i64* %4
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %44)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %x
  br label %25
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %6
  br label %38
}
