@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_Bint__toHexString(i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i64
  %25 = alloca i8
  %26 = load i8*, i8** @_bal_stack_guard
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %49, label %28
28:
  store i64 0, i64* %i
  %29 = load i64, i64* %i
  %30 = xor i64 -1, %29
  store i64 %30, i64* %1
  %31 = load i64, i64* %1
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31)
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %33 = call i64 @_B_twiddle(i64 1)
  store i64 %33, i64* %3
  %34 = load i64, i64* %3
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34)
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %36 = call i64 @_B_twiddle(i64 100)
  store i64 %36, i64* %5
  %37 = load i64, i64* %5
  %38 = xor i64 -1, %37
  store i64 %38, i64* %6
  %39 = load i64, i64* %6
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %41 = xor i64 -1, 9223372036854775807
  store i64 %41, i64* %8
  %42 = load i64, i64* %8
  %43 = call i8 addrspace(1)* @_Bint__toHexString(i64 %42)
  store i8 addrspace(1)* %43, i8 addrspace(1)** %9
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %45 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %46 = extractvalue {i64, i1} %45, 1
  br i1 %46, label %61, label %50
47:
  %48 = load i64, i64* %24
  call void @_bal_panic(i64 %48)
  unreachable
49:
  call void @_bal_panic(i64 516)
  unreachable
50:
  %51 = extractvalue {i64, i1} %45, 0
  store i64 %51, i64* %11
  %52 = load i64, i64* %11
  %53 = xor i64 -1, %52
  store i64 %53, i64* %12
  %54 = load i64, i64* %12
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %54)
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  %56 = call i64 @_B_minusTwo(i64 42)
  store i64 %56, i64* %14
  %57 = load i64, i64* %14
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %57)
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  %59 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 98)
  %60 = extractvalue {i64, i1} %59, 1
  br i1 %60, label %73, label %62
61:
  store i64 2049, i64* %24
  br label %47
62:
  %63 = extractvalue {i64, i1} %59, 0
  store i64 %63, i64* %16
  %64 = load i64, i64* %16
  %65 = call i64 @_B_minusTwo(i64 %64)
  store i64 %65, i64* %17
  %66 = load i64, i64* %17
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66)
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  %68 = call i64 @_B_addTwo(i64 42)
  store i64 %68, i64* %19
  %69 = load i64, i64* %19
  %70 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %69)
  call void @_Bio__println(i8 addrspace(1)* %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  %71 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 98)
  %72 = extractvalue {i64, i1} %71, 1
  br i1 %72, label %80, label %74
73:
  store i64 2817, i64* %24
  br label %47
74:
  %75 = extractvalue {i64, i1} %71, 0
  store i64 %75, i64* %21
  %76 = load i64, i64* %21
  %77 = call i64 @_B_addTwo(i64 %76)
  store i64 %77, i64* %22
  %78 = load i64, i64* %22
  %79 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %78)
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %23
  ret void
80:
  store i64 3585, i64* %24
  br label %47
}
define i64 @_B_twiddle(i64 %0) {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i64 %0, i64* %i
  %7 = load i64, i64* %i
  %8 = xor i64 -1, %7
  store i64 %8, i64* %2
  %9 = load i64, i64* %2
  ret i64 %9
10:
  call void @_bal_panic(i64 4612)
  unreachable
}
define i64 @_B_minusTwo(i64 %0) {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %16, label %10
10:
  store i64 %0, i64* %i
  %11 = load i64, i64* %i
  %12 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %11)
  %13 = extractvalue {i64, i1} %12, 1
  br i1 %13, label %24, label %17
14:
  %15 = load i64, i64* %6
  call void @_bal_panic(i64 %15)
  unreachable
16:
  call void @_bal_panic(i64 5636)
  unreachable
17:
  %18 = extractvalue {i64, i1} %12, 0
  store i64 %18, i64* %2
  %19 = load i64, i64* %2
  %20 = xor i64 -1, %19
  store i64 %20, i64* %3
  %21 = load i64, i64* %3
  %22 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %21)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %30, label %25
24:
  store i64 5889, i64* %6
  br label %14
25:
  %26 = extractvalue {i64, i1} %22, 0
  store i64 %26, i64* %4
  %27 = load i64, i64* %4
  %28 = xor i64 -1, %27
  store i64 %28, i64* %5
  %29 = load i64, i64* %5
  ret i64 %29
30:
  store i64 5889, i64* %6
  br label %14
}
define i64 @_B_addTwo(i64 %0) {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %18, label %10
10:
  store i64 %0, i64* %i
  %11 = load i64, i64* %i
  %12 = xor i64 -1, %11
  store i64 %12, i64* %2
  %13 = load i64, i64* %2
  %14 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %13)
  %15 = extractvalue {i64, i1} %14, 1
  br i1 %15, label %26, label %19
16:
  %17 = load i64, i64* %6
  call void @_bal_panic(i64 %17)
  unreachable
18:
  call void @_bal_panic(i64 6404)
  unreachable
19:
  %20 = extractvalue {i64, i1} %14, 0
  store i64 %20, i64* %3
  %21 = load i64, i64* %3
  %22 = xor i64 -1, %21
  store i64 %22, i64* %4
  %23 = load i64, i64* %4
  %24 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %23)
  %25 = extractvalue {i64, i1} %24, 1
  br i1 %25, label %30, label %27
26:
  store i64 6657, i64* %6
  br label %16
27:
  %28 = extractvalue {i64, i1} %24, 0
  store i64 %28, i64* %5
  %29 = load i64, i64* %5
  ret i64 %29
30:
  store i64 6657, i64* %6
  br label %16
}
