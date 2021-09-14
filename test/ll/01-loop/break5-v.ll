@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i64 @_B_foo(i64 10)
  store i64 %7, i64* %1
  %8 = load i64, i64* %1
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal i64 @_B_foo(i64 %0) {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %38, label %13
13:
  store i64 %0, i64* %x
  %14 = load i64, i64* %x
  store i64 %14, i64* %i
  br label %15
15:
  %16 = load i64, i64* %i
  %17 = icmp sge i64 %16, 0
  store i1 %17, i1* %2
  %18 = load i1, i1* %2
  br i1 %18, label %19, label %23
19:
  %20 = load i64, i64* %i
  %21 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %20, i64 1)
  %22 = extractvalue {i64, i1} %21, 1
  br i1 %22, label %47, label %40
23:
  %24 = load i64, i64* %i
  %25 = icmp slt i64 %24, 0
  store i1 %25, i1* %7
  %26 = load i1, i1* %7
  br i1 %26, label %31, label %32
27:
  %28 = load i64, i64* %i
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28)
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %23
30:
  br label %15
31:
  ret i64 -1
32:
  %33 = load i64, i64* %i
  %34 = call i64 @_B_foo(i64 %33)
  store i64 %34, i64* %8
  %35 = load i64, i64* %8
  ret i64 %35
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588)
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = extractvalue {i64, i1} %21, 0
  store i64 %41, i64* %3
  %42 = load i64, i64* %3
  store i64 %42, i64* %i
  %43 = load i64, i64* %x
  %44 = load i64, i64* %i
  %45 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %43, i64 %44)
  %46 = extractvalue {i64, i1} %45, 1
  br i1 %46, label %54, label %49
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 4353)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %9
  br label %36
49:
  %50 = extractvalue {i64, i1} %45, 0
  store i64 %50, i64* %5
  %51 = load i64, i64* %5
  %52 = icmp eq i64 %51, 2
  store i1 %52, i1* %4
  %53 = load i1, i1* %4
  br i1 %53, label %27, label %30
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 4609)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %9
  br label %36
}
