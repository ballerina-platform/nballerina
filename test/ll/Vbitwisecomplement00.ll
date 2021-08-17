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
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %50, label %22
22:
  store i64 0, i64* %i
  %23 = load i64, i64* %i
  %24 = xor i64 -1, %23
  store i64 %24, i64* %1
  %25 = load i64, i64* %1
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %25)
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %27 = call i64 @_B_twiddle(i64 1)
  store i64 %27, i64* %3
  %28 = load i64, i64* %3
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28)
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %30 = call i64 @_B_twiddle(i64 100)
  store i64 %30, i64* %5
  %31 = load i64, i64* %5
  %32 = xor i64 -1, %31
  store i64 %32, i64* %6
  %33 = load i64, i64* %6
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %33)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %35 = call i8 addrspace(1)* @_Bint__toHexString(i64 -9223372036854775808)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %8
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %38 = call i64 @_B_minusTwo(i64 42)
  store i64 %38, i64* %11
  %39 = load i64, i64* %11
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %41 = call i64 @_B_minusTwo(i64 -98)
  store i64 %41, i64* %13
  %42 = load i64, i64* %13
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %42)
  call void @_Bio__println(i8 addrspace(1)* %43)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %44 = call i64 @_B_addTwo(i64 42)
  store i64 %44, i64* %15
  %45 = load i64, i64* %15
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %45)
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %47 = call i64 @_B_addTwo(i64 -98)
  store i64 %47, i64* %17
  %48 = load i64, i64* %17
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %48)
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  ret void
50:
  call void @_bal_panic(i64 516)
  unreachable
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
