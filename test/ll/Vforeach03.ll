@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %i = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  %7 = call i64 @_B_loop()
  store i64 %7, i64* %1
  %8 = load i64, i64* %1
  store i64 %8, i64* %i
  %9 = load i64, i64* %i
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %9)
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
11:
  call void @_bal_panic(i64 772)
  unreachable
}
define i64 @_B_loop() {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %22, label %7
7:
  store i64 5, i64* %i
  br label %8
8:
  %9 = load i64, i64* %i
  %10 = icmp slt i64 %9, 10
  store i1 %10, i1* %1
  %11 = load i1, i1* %1
  br i1 %11, label %18, label %12
12:
  %13 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %26, label %23
  %16 = load i64, i64* %i
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %i
  br label %8
18:
  %19 = load i64, i64* %i
  ret i64 %19
20:
  %21 = load i64, i64* %3
  call void @_bal_panic(i64 %21)
  unreachable
22:
  call void @_bal_panic(i64 1796)
  unreachable
23:
  %24 = extractvalue {i64, i1} %13, 0
  store i64 %24, i64* %2
  %25 = load i64, i64* %2
  ret i64 %25
26:
  store i64 2817, i64* %3
  br label %20
}
