@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %neg1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %26, label %14
14:
  %15 = call i64 @_B_neg(i64 17)
  store i64 %15, i64* %1
  %16 = load i64, i64* %1
  store i64 %16, i64* %neg1
  %17 = load i64, i64* %neg1
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %19 = call i64 @_B_neg(i64 0)
  store i64 %19, i64* %3
  %20 = load i64, i64* %3
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %22 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %36, label %27
24:
  %25 = load i64, i64* %10
  call void @_bal_panic(i64 %25)
  unreachable
26:
  call void @_bal_panic(i64 516)
  unreachable
27:
  %28 = extractvalue {i64, i1} %22, 0
  store i64 %28, i64* %5
  %29 = load i64, i64* %5
  %30 = call i64 @_B_neg(i64 %29)
  store i64 %30, i64* %6
  %31 = load i64, i64* %6
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31)
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %33 = call i64 @_B_negneg(i64 1)
  store i64 %33, i64* %8
  %34 = load i64, i64* %8
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34)
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  ret void
36:
  store i64 1537, i64* %10
  br label %24
}
define internal i64 @_B_neg(i64 %0) {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, i64* %x
  %8 = load i64, i64* %x
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %8)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %17, label %14
11:
  %12 = load i64, i64* %3
  call void @_bal_panic(i64 %12)
  unreachable
13:
  call void @_bal_panic(i64 2564)
  unreachable
14:
  %15 = extractvalue {i64, i1} %9, 0
  store i64 %15, i64* %2
  %16 = load i64, i64* %2
  ret i64 %16
17:
  store i64 2817, i64* %3
  br label %11
}
define internal i64 @_B_negneg(i64 %0) {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %x
  %9 = load i64, i64* %x
  %10 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %9)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %20, label %15
12:
  %13 = load i64, i64* %4
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 3588)
  unreachable
15:
  %16 = extractvalue {i64, i1} %10, 0
  store i64 %16, i64* %2
  %17 = load i64, i64* %2
  %18 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %17)
  %19 = extractvalue {i64, i1} %18, 1
  br i1 %19, label %24, label %21
20:
  store i64 3841, i64* %4
  br label %12
21:
  %22 = extractvalue {i64, i1} %18, 0
  store i64 %22, i64* %3
  %23 = load i64, i64* %3
  ret i64 %23
24:
  store i64 3841, i64* %4
  br label %12
}
