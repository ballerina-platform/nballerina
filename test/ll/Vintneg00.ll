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
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %26, label %12
12:
  %13 = call i64 @_B_neg(i64 17)
  store i64 %13, i64* %1
  %14 = load i64, i64* %1
  store i64 %14, i64* %neg1
  %15 = load i64, i64* %neg1
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15)
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %17 = call i64 @_B_neg(i64 0)
  store i64 %17, i64* %3
  %18 = load i64, i64* %3
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %20 = call i64 @_B_neg(i64 -1)
  store i64 %20, i64* %5
  %21 = load i64, i64* %5
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %23 = call i64 @_B_negneg(i64 1)
  store i64 %23, i64* %7
  %24 = load i64, i64* %7
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %24)
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
26:
  call void @_bal_panic(i64 516)
  unreachable
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
