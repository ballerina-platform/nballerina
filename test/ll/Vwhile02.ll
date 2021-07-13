@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_printInts(i64 5)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
6:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_printInts(i64 %0) {
  %maxExclusive = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %24, label %9
9:
  store i64 %0, i64* %maxExclusive
  %10 = load i64, i64* %maxExclusive
  store i64 %10, i64* %i
  br label %11
11:
  %12 = load i64, i64* %i
  %13 = call i64 @_B_decrease(i64 %12)
  store i64 %13, i64* %3
  %14 = load i64, i64* %3
  %15 = icmp sle i64 0, %14
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %18, label %17
17:
  ret void
18:
  %19 = load i64, i64* %i
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %19)
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %21 = load i64, i64* %i
  %22 = call i64 @_B_decrease(i64 %21)
  store i64 %22, i64* %5
  %23 = load i64, i64* %5
  store i64 %23, i64* %i
  br label %11
24:
  call void @_bal_panic(i64 3076)
  unreachable
}
define internal i64 @_B_decrease(i64 %0) {
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
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %17, label %14
11:
  %12 = load i64, i64* %3
  call void @_bal_panic(i64 %12)
  unreachable
13:
  call void @_bal_panic(i64 5124)
  unreachable
14:
  %15 = extractvalue {i64, i1} %9, 0
  store i64 %15, i64* %2
  %16 = load i64, i64* %2
  ret i64 %16
17:
  store i64 5377, i64* %3
  br label %11
}
