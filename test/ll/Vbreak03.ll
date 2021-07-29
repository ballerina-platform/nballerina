@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_foo(i64 %0) {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %41, label %14
14:
  store i64 %0, i64* %x
  %15 = load i64, i64* %x
  store i64 %15, i64* %i
  br label %16
16:
  %17 = load i64, i64* %i
  %18 = icmp sge i64 %17, 0
  store i1 %18, i1* %6
  %19 = load i1, i1* %6
  br i1 %19, label %24, label %20
20:
  %21 = load i64, i64* %i
  %22 = icmp slt i64 %21, 0
  store i1 %22, i1* %7
  %23 = load i1, i1* %7
  br i1 %23, label %32, label %35
24:
  %25 = load i64, i64* %i
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %25, i64 1)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %49, label %42
28:
  %29 = load i64, i64* %i
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %29)
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %20
31:
  br label %16
32:
  %33 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %59, label %56
35:
  %36 = load i64, i64* %i
  %37 = call i64 @_B_foo(i64 %36)
  store i64 %37, i64* %9
  %38 = load i64, i64* %9
  ret i64 %38
39:
  %40 = load i64, i64* %10
  call void @_bal_panic(i64 %40)
  unreachable
41:
  call void @_bal_panic(i64 3332)
  unreachable
42:
  %43 = extractvalue {i64, i1} %26, 0
  store i64 %43, i64* %2
  %44 = load i64, i64* %2
  store i64 %44, i64* %i
  %45 = load i64, i64* %x
  %46 = load i64, i64* %i
  %47 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %45, i64 %46)
  %48 = extractvalue {i64, i1} %47, 1
  br i1 %48, label %55, label %50
49:
  store i64 4097, i64* %10
  br label %39
50:
  %51 = extractvalue {i64, i1} %47, 0
  store i64 %51, i64* %4
  %52 = load i64, i64* %4
  %53 = icmp eq i64 %52, 2
  store i1 %53, i1* %3
  %54 = load i1, i1* %3
  br i1 %54, label %28, label %31
55:
  store i64 4353, i64* %10
  br label %39
56:
  %57 = extractvalue {i64, i1} %33, 0
  store i64 %57, i64* %8
  %58 = load i64, i64* %8
  ret i64 %58
59:
  store i64 5889, i64* %10
  br label %39
}
