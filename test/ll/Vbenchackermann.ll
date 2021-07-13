@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i64 @_B_a(i64 3, i64 9)
  store i64 %7, i64* %1
  %8 = load i64, i64* %1
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
10:
  call void @_bal_panic(i64 516)
  unreachable
}
define internal i64 @_B_a(i64 %0, i64 %1) {
  %m = alloca i64
  %n = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %38, label %16
16:
  store i64 %0, i64* %m
  store i64 %1, i64* %n
  %17 = load i64, i64* %m
  %18 = icmp eq i64 %17, 0
  store i1 %18, i1* %3
  %19 = load i1, i1* %3
  br i1 %19, label %20, label %24
20:
  %21 = load i64, i64* %n
  %22 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %21, i64 1)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %42, label %39
24:
  %25 = load i64, i64* %n
  %26 = icmp eq i64 %25, 0
  store i1 %26, i1* %5
  %27 = load i1, i1* %5
  br i1 %27, label %28, label %32
28:
  %29 = load i64, i64* %m
  %30 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %48, label %43
32:
  %33 = load i64, i64* %m
  %34 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %33, i64 1)
  %35 = extractvalue {i64, i1} %34, 1
  br i1 %35, label %54, label %49
36:
  %37 = load i64, i64* %12
  call void @_bal_panic(i64 %37)
  unreachable
38:
  call void @_bal_panic(i64 1284)
  unreachable
39:
  %40 = extractvalue {i64, i1} %22, 0
  store i64 %40, i64* %4
  %41 = load i64, i64* %4
  ret i64 %41
42:
  store i64 1793, i64* %12
  br label %36
43:
  %44 = extractvalue {i64, i1} %30, 0
  store i64 %44, i64* %6
  %45 = load i64, i64* %6
  %46 = call i64 @_B_a(i64 %45, i64 1)
  store i64 %46, i64* %7
  %47 = load i64, i64* %7
  ret i64 %47
48:
  store i64 2561, i64* %12
  br label %36
49:
  %50 = extractvalue {i64, i1} %34, 0
  store i64 %50, i64* %8
  %51 = load i64, i64* %n
  %52 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %51, i64 1)
  %53 = extractvalue {i64, i1} %52, 1
  br i1 %53, label %64, label %55
54:
  store i64 3329, i64* %12
  br label %36
55:
  %56 = extractvalue {i64, i1} %52, 0
  store i64 %56, i64* %9
  %57 = load i64, i64* %m
  %58 = load i64, i64* %9
  %59 = call i64 @_B_a(i64 %57, i64 %58)
  store i64 %59, i64* %10
  %60 = load i64, i64* %8
  %61 = load i64, i64* %10
  %62 = call i64 @_B_a(i64 %60, i64 %61)
  store i64 %62, i64* %11
  %63 = load i64, i64* %11
  ret i64 %63
64:
  store i64 3329, i64* %12
  br label %36
}
