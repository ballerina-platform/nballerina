@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %8 = alloca i8 addrspace(1)*
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
  br i1 %16, label %28, label %21
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = extractvalue {i64, i1} %15, 0
  store i64 %22, i64* %2
  %23 = load i64, i64* %2
  store i64 %23, i64* %two55
  %24 = load i64, i64* %two55
  call void @_B_testAround(i64 %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %25 = load i64, i64* %two55
  %26 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %25, i64 2)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %37, label %30
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %8
  br label %17
30:
  %31 = extractvalue {i64, i1} %26, 0
  store i64 %31, i64* %4
  %32 = load i64, i64* %4
  store i64 %32, i64* %two56
  %33 = load i64, i64* %two56
  call void @_B_testAround(i64 %33)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %34 = load i64, i64* %two56
  %35 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %34, i64 64)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %43, label %39
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %8
  br label %17
39:
  %40 = extractvalue {i64, i1} %35, 0
  store i64 %40, i64* %6
  %41 = load i64, i64* %6
  store i64 %41, i64* %two62
  %42 = load i64, i64* %two62
  call void @_B_testAround(i64 %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 5633)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %8
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
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %20, label %14
14:
  store i64 %0, i64* %pow2
  %15 = load i64, i64* %pow2
  %16 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %15, i64 1)
  %17 = extractvalue {i64, i1} %16, 1
  br i1 %17, label %28, label %22
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684)
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = extractvalue {i64, i1} %16, 0
  store i64 %23, i64* %2
  %24 = load i64, i64* %2
  call void @_B_roundTrip(i64 %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %25 = load i64, i64* %pow2
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %25)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %37, label %30
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 7937)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %10
  br label %18
30:
  %31 = extractvalue {i64, i1} %26, 0
  store i64 %31, i64* %4
  %32 = load i64, i64* %4
  call void @_B_roundTrip(i64 %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %33 = load i64, i64* %pow2
  call void @_B_roundTrip(i64 %33)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %34 = load i64, i64* %pow2
  %35 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %34)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %44, label %39
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 8193)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %10
  br label %18
39:
  %40 = extractvalue {i64, i1} %35, 0
  store i64 %40, i64* %7
  %41 = load i64, i64* %7
  %42 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %41, i64 1)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %49, label %46
44:
  %45 = call i8 addrspace(1)* @_bal_panic_construct(i64 8705)
  store i8 addrspace(1)* %45, i8 addrspace(1)** %10
  br label %18
46:
  %47 = extractvalue {i64, i1} %42, 0
  store i64 %47, i64* %8
  %48 = load i64, i64* %8
  call void @_B_roundTrip(i64 %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  ret void
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 8705)
  store i8 addrspace(1)* %50, i8 addrspace(1)** %10
  br label %18
}
define internal void @_B_roundTrip(i64 %0) {
  %n = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
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
  br i1 %18, label %29, label %33
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 9476)
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 504403158265495552
  br i1 %28, label %39, label %48
29:
  %30 = call double @_bal_tagged_to_float(i8 addrspace(1)* %14)
  %31 = call {i64, i1} @_bal_float_to_int(double %30)
  %32 = extractvalue {i64, i1} %31, 1
  br i1 %32, label %37, label %34
33:
  store i8 addrspace(1)* %14, i8 addrspace(1)** %4
  br label %23
34:
  %35 = extractvalue {i64, i1} %31, 0
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %35)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %4
  br label %23
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 9731)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %7
  br label %19
39:
  %40 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %24)
  store i64 %40, i64* %5
  %41 = load i64, i64* %n
  %42 = load i64, i64* %5
  %43 = icmp eq i64 %41, %42
  store i1 %43, i1* %2
  %44 = load i1, i1* %2
  %45 = zext i1 %44 to i64
  %46 = or i64 %45, 72057594037927936
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 9731)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %7
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
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 10500)
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
