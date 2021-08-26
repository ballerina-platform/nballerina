@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %two48 = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %two55 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %two56 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %two62 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %19, label %12
12:
  store i64 281474976710656, i64* %two48
  %13 = load i64, i64* %two48
  call void @_B_testAround(i64 %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %14 = load i64, i64* %two48
  %15 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %14, i64 128)
  %16 = extractvalue {i64, i1} %15, 1
  br i1 %16, label %27, label %20
17:
  %18 = load i64, i64* %8
  call void @_bal_panic(i64 %18)
  unreachable
19:
  call void @_bal_panic(i64 772)
  unreachable
20:
  %21 = extractvalue {i64, i1} %15, 0
  store i64 %21, i64* %2
  %22 = load i64, i64* %2
  store i64 %22, i64* %two55
  %23 = load i64, i64* %two55
  call void @_B_testAround(i64 %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %24 = load i64, i64* %two55
  %25 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %24, i64 2)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %35, label %28
27:
  store i64 2561, i64* %8
  br label %17
28:
  %29 = extractvalue {i64, i1} %25, 0
  store i64 %29, i64* %4
  %30 = load i64, i64* %4
  store i64 %30, i64* %two56
  %31 = load i64, i64* %two56
  call void @_B_testAround(i64 %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %32 = load i64, i64* %two56
  %33 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %32, i64 64)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %40, label %36
35:
  store i64 4097, i64* %8
  br label %17
36:
  %37 = extractvalue {i64, i1} %33, 0
  store i64 %37, i64* %6
  %38 = load i64, i64* %6
  store i64 %38, i64* %two62
  %39 = load i64, i64* %two62
  call void @_B_testAround(i64 %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
40:
  store i64 5633, i64* %8
  br label %17
}
define internal void @_B_testAround(i64 %0) {
  %pow2 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %20, label %14
14:
  store i64 %0, i64* %pow2
  %15 = load i64, i64* %pow2
  %16 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %15, i64 1)
  %17 = extractvalue {i64, i1} %16, 1
  br i1 %17, label %27, label %21
18:
  %19 = load i64, i64* %10
  call void @_bal_panic(i64 %19)
  unreachable
20:
  call void @_bal_panic(i64 7684)
  unreachable
21:
  %22 = extractvalue {i64, i1} %16, 0
  store i64 %22, i64* %2
  %23 = load i64, i64* %2
  call void @_B_roundTrip(i64 %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %24 = load i64, i64* %pow2
  %25 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %24)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %35, label %28
27:
  store i64 7937, i64* %10
  br label %18
28:
  %29 = extractvalue {i64, i1} %25, 0
  store i64 %29, i64* %4
  %30 = load i64, i64* %4
  call void @_B_roundTrip(i64 %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %31 = load i64, i64* %pow2
  call void @_B_roundTrip(i64 %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %32 = load i64, i64* %pow2
  %33 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %32)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %41, label %36
35:
  store i64 8193, i64* %10
  br label %18
36:
  %37 = extractvalue {i64, i1} %33, 0
  store i64 %37, i64* %7
  %38 = load i64, i64* %7
  %39 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %38, i64 1)
  %40 = extractvalue {i64, i1} %39, 1
  br i1 %40, label %45, label %42
41:
  store i64 8705, i64* %10
  br label %18
42:
  %43 = extractvalue {i64, i1} %39, 0
  store i64 %43, i64* %8
  %44 = load i64, i64* %8
  call void @_B_roundTrip(i64 %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  ret void
45:
  store i64 8705, i64* %10
  br label %18
}
define internal void @_B_roundTrip(i64 %0) {
  %n = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %21, label %11
11:
  store i64 %0, i64* %n
  %12 = load i64, i64* %n
  %13 = call i8 addrspace(1)* @_B_toAny(i64 %12)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %3
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %15 = addrspacecast i8 addrspace(1)* %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 576460752303423488
  br i1 %18, label %28, label %32
19:
  %20 = load i64, i64* %7
  call void @_bal_panic(i64 %20)
  unreachable
21:
  call void @_bal_panic(i64 9476)
  unreachable
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %24 = addrspacecast i8 addrspace(1)* %23 to i8*
  %25 = ptrtoint i8* %24 to i64
  %26 = and i64 %25, 2233785415175766016
  %27 = icmp eq i64 %26, 504403158265495552
  br i1 %27, label %37, label %46
28:
  %29 = call double @_bal_tagged_to_float(i8 addrspace(1)* %14)
  %30 = call {i64, i1} @_bal_float_to_int(double %29)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %36, label %33
32:
  store i8 addrspace(1)* %14, i8 addrspace(1)** %4
  br label %22
33:
  %34 = extractvalue {i64, i1} %30, 0
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %4
  br label %22
36:
  store i64 9731, i64* %7
  br label %19
37:
  %38 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %23)
  store i64 %38, i64* %5
  %39 = load i64, i64* %n
  %40 = load i64, i64* %5
  %41 = icmp eq i64 %39, %40
  store i1 %41, i1* %2
  %42 = load i1, i1* %2
  %43 = zext i1 %42 to i64
  %44 = or i64 %43, 72057594037927936
  %45 = getelementptr i8, i8 addrspace(1)* null, i64 %44
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
46:
  store i64 9731, i64* %7
  br label %19
}
define internal i8 addrspace(1)* @_B_toAny(i64 %0) {
  %n = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, i64* %n
  %6 = load i64, i64* %n
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  ret i8 addrspace(1)* %7
8:
  call void @_bal_panic(i64 10500)
  unreachable
}
