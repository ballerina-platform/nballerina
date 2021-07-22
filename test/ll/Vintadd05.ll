@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %21, label %16
16:
  %17 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 1, i64 0)
  %18 = extractvalue {i64, i1} %17, 1
  br i1 %18, label %28, label %22
19:
  %20 = load i64, i64* %12
  call void @_bal_panic(i64 %20)
  unreachable
21:
  call void @_bal_panic(i64 516)
  unreachable
22:
  %23 = extractvalue {i64, i1} %17, 0
  store i64 %23, i64* %1
  %24 = load i64, i64* %1
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %24)
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %26 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 1, i64 9223372036854775806)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %35, label %29
28:
  store i64 769, i64* %12
  br label %19
29:
  %30 = extractvalue {i64, i1} %26, 0
  store i64 %30, i64* %3
  %31 = load i64, i64* %3
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31)
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %33 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %41, label %36
35:
  store i64 1025, i64* %12
  br label %19
36:
  %37 = extractvalue {i64, i1} %33, 0
  store i64 %37, i64* %5
  %38 = load i64, i64* %5
  %39 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %38, i64 0)
  %40 = extractvalue {i64, i1} %39, 1
  br i1 %40, label %48, label %42
41:
  store i64 1281, i64* %12
  br label %19
42:
  %43 = extractvalue {i64, i1} %39, 0
  store i64 %43, i64* %6
  %44 = load i64, i64* %6
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %44)
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %46 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %47 = extractvalue {i64, i1} %46, 1
  br i1 %47, label %53, label %49
48:
  store i64 1281, i64* %12
  br label %19
49:
  %50 = extractvalue {i64, i1} %46, 0
  store i64 %50, i64* %8
  %51 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775806)
  %52 = extractvalue {i64, i1} %51, 1
  br i1 %52, label %60, label %54
53:
  store i64 1537, i64* %12
  br label %19
54:
  %55 = extractvalue {i64, i1} %51, 0
  store i64 %55, i64* %9
  %56 = load i64, i64* %8
  %57 = load i64, i64* %9
  %58 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %56, i64 %57)
  %59 = extractvalue {i64, i1} %58, 1
  br i1 %59, label %65, label %61
60:
  store i64 1537, i64* %12
  br label %19
61:
  %62 = extractvalue {i64, i1} %58, 0
  store i64 %62, i64* %10
  %63 = load i64, i64* %10
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %63)
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  ret void
65:
  store i64 1537, i64* %12
  br label %19
}
