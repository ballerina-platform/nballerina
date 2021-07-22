@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %INT_MIN = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %15, label %10
10:
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775807)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %21, label %16
13:
  %14 = load i64, i64* %6
  call void @_bal_panic(i64 %14)
  unreachable
15:
  call void @_bal_panic(i64 772)
  unreachable
16:
  %17 = extractvalue {i64, i1} %11, 0
  store i64 %17, i64* %1
  %18 = load i64, i64* %1
  %19 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %18, i64 1)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %27, label %22
21:
  store i64 1025, i64* %6
  br label %13
22:
  %23 = extractvalue {i64, i1} %19, 0
  store i64 %23, i64* %2
  %24 = load i64, i64* %2
  store i64 %24, i64* %INT_MIN
  %25 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %35, label %28
27:
  store i64 1025, i64* %6
  br label %13
28:
  %29 = extractvalue {i64, i1} %25, 0
  store i64 %29, i64* %3
  %30 = load i64, i64* %INT_MIN
  %31 = load i64, i64* %3
  %32 = call i64 @_B_div(i64 %30, i64 %31)
  store i64 %32, i64* %4
  %33 = load i64, i64* %4
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %33)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
35:
  store i64 1281, i64* %6
  br label %13
}
define internal i64 @_B_div(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %16
12:
  %13 = load i64, i64* %4
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 2052)
  unreachable
15:
  store i64 2306, i64* %4
  br label %12
16:
  %17 = icmp eq i64 %9, -9223372036854775808
  %18 = icmp eq i64 %10, -1
  %19 = and i1 %17, %18
  br i1 %19, label %23, label %20
20:
  %21 = sdiv i64 %9, %10
  store i64 %21, i64* %3
  %22 = load i64, i64* %3
  ret i64 %22
23:
  store i64 2305, i64* %4
  br label %12
}
