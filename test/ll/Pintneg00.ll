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
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %14, label %9
9:
  %10 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775807)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %20, label %15
12:
  %13 = load i64, i64* %5
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 772)
  unreachable
15:
  %16 = extractvalue {i64, i1} %10, 0
  store i64 %16, i64* %1
  %17 = load i64, i64* %1
  %18 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %17, i64 1)
  %19 = extractvalue {i64, i1} %18, 1
  br i1 %19, label %28, label %21
20:
  store i64 1025, i64* %5
  br label %12
21:
  %22 = extractvalue {i64, i1} %18, 0
  store i64 %22, i64* %2
  %23 = load i64, i64* %2
  store i64 %23, i64* %INT_MIN
  %24 = load i64, i64* %INT_MIN
  %25 = call i64 @_B_neg(i64 %24)
  store i64 %25, i64* %3
  %26 = load i64, i64* %3
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %26)
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
28:
  store i64 1025, i64* %5
  br label %12
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
  call void @_bal_panic(i64 2052)
  unreachable
14:
  %15 = extractvalue {i64, i1} %9, 0
  store i64 %15, i64* %2
  %16 = load i64, i64* %2
  ret i64 %16
17:
  store i64 2305, i64* %3
  br label %11
}
