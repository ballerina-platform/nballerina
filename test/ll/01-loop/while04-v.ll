@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
define internal void @_B_printInts(i64 %0) {
  %maxExclusive = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %21, label %8
8:
  store i64 %0, i64* %maxExclusive
  store i64 0, i64* %i
  br label %9
9:
  %10 = load i64, i64* %i
  %11 = load i64, i64* %maxExclusive
  %12 = icmp slt i64 %10, %11
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %14, label %20
14:
  %15 = load i64, i64* %i
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15)
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %17 = load i64, i64* %i
  %18 = call i64 @_B_increase(i64 %17)
  store i64 %18, i64* %4
  %19 = load i64, i64* %4
  store i64 %19, i64* %i
  br label %9
20:
  ret void
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332)
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
define internal i64 @_B_increase(i64 %0) {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, i64* %x
  %8 = load i64, i64* %x
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 5380)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, i64* %2
  %17 = load i64, i64* %2
  ret i64 %17
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 5633)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %3
  br label %11
}
