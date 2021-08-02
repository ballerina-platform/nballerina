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
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i64
  %9 = alloca i64
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
  br i1 %22, label %46, label %39
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
  %37 = load i64, i64* %9
  call void @_bal_panic(i64 %37)
  unreachable
38:
  call void @_bal_panic(i64 3332)
  unreachable
39:
  %40 = extractvalue {i64, i1} %21, 0
  store i64 %40, i64* %3
  %41 = load i64, i64* %3
  store i64 %41, i64* %i
  %42 = load i64, i64* %x
  %43 = load i64, i64* %i
  %44 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %42, i64 %43)
  %45 = extractvalue {i64, i1} %44, 1
  br i1 %45, label %52, label %47
46:
  store i64 4097, i64* %9
  br label %36
47:
  %48 = extractvalue {i64, i1} %44, 0
  store i64 %48, i64* %5
  %49 = load i64, i64* %5
  %50 = icmp eq i64 %49, 2
  store i1 %50, i1* %4
  %51 = load i1, i1* %4
  br i1 %51, label %27, label %30
52:
  store i64 4353, i64* %9
  br label %36
}
