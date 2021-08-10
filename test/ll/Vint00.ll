@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
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
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %20, label %10
10:
  store i64 %0, i64* %n
  %11 = load i64, i64* %n
  %12 = call i8 addrspace(1)* @_B_toAny(i64 %11)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %3
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 504403158265495552
  br i1 %17, label %21, label %30
18:
  %19 = load i64, i64* %6
  call void @_bal_panic(i64 %19)
  unreachable
20:
  call void @_bal_panic(i64 9476)
  unreachable
21:
  %22 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %13)
  store i64 %22, i64* %4
  %23 = load i64, i64* %n
  %24 = load i64, i64* %4
  %25 = icmp eq i64 %23, %24
  store i1 %25, i1* %2
  %26 = load i1, i1* %2
  %27 = zext i1 %26 to i64
  %28 = or i64 %27, 72057594037927936
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
30:
  store i64 9731, i64* %6
  br label %18
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
