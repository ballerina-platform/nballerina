@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
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
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %24, label %9
9:
  store i64 %0, i64* %maxExclusive
  store i64 0, i64* %i
  br label %10
10:
  %11 = load i64, i64* %i
  %12 = load i64, i64* %maxExclusive
  %13 = icmp slt i64 %11, %12
  store i1 %13, i1* %2
  %14 = load i1, i1* %2
  br i1 %14, label %15, label %21
15:
  %16 = load i64, i64* %i
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %18 = load i64, i64* %i
  %19 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %18, i64 1)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %28, label %25
21:
  ret void
22:
  %23 = load i64, i64* %5
  call void @_bal_panic(i64 %23)
  unreachable
24:
  call void @_bal_panic(i64 3076)
  unreachable
25:
  %26 = extractvalue {i64, i1} %19, 0
  store i64 %26, i64* %4
  %27 = load i64, i64* %4
  store i64 %27, i64* %i
  br label %10
28:
  store i64 4097, i64* %5
  br label %22
}
