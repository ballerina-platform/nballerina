@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %i = alloca i64
  %j = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %31, label %16
16:
  store i64 5, i64* %i
  store i64 9, i64* %j
  %17 = load i64, i64* %i
  %18 = load i64, i64* %j
  %19 = and i64 %17, %18
  store i64 %19, i64* %1
  %20 = load i64, i64* %1
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i64 9223372036854775807, i64* %i
  store i64 9223372036854775807, i64* %j
  %22 = load i64, i64* %i
  %23 = load i64, i64* %j
  %24 = and i64 %22, %23
  store i64 %24, i64* %3
  %25 = load i64, i64* %3
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %25)
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %27 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %28 = extractvalue {i64, i1} %27, 1
  br i1 %28, label %37, label %32
29:
  %30 = load i64, i64* %12
  call void @_bal_panic(i64 %30)
  unreachable
31:
  call void @_bal_panic(i64 516)
  unreachable
32:
  %33 = extractvalue {i64, i1} %27, 0
  store i64 %33, i64* %5
  %34 = load i64, i64* %5
  store i64 %34, i64* %i
  %35 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %48, label %38
37:
  store i64 2817, i64* %12
  br label %29
38:
  %39 = extractvalue {i64, i1} %35, 0
  store i64 %39, i64* %6
  %40 = load i64, i64* %6
  store i64 %40, i64* %j
  %41 = load i64, i64* %i
  %42 = load i64, i64* %j
  %43 = and i64 %41, %42
  store i64 %43, i64* %7
  %44 = load i64, i64* %7
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %44)
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  store i64 9223372036854775807, i64* %i
  %46 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %47 = extractvalue {i64, i1} %46, 1
  br i1 %47, label %57, label %49
48:
  store i64 3073, i64* %12
  br label %29
49:
  %50 = extractvalue {i64, i1} %46, 0
  store i64 %50, i64* %9
  %51 = load i64, i64* %9
  store i64 %51, i64* %j
  %52 = load i64, i64* %i
  %53 = load i64, i64* %j
  %54 = and i64 %52, %53
  store i64 %54, i64* %10
  %55 = load i64, i64* %10
  %56 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %55)
  call void @_Bio__println(i8 addrspace(1)* %56)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  ret void
57:
  store i64 4097, i64* %12
  br label %29
}
