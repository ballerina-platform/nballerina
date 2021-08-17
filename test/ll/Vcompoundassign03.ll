@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %17, label %9
9:
  store i64 1, i64* %x
  %10 = load i64, i64* %x
  %11 = call i64 @_B_foo(i64 %10)
  store i64 %11, i64* %1
  %12 = load i64, i64* %1
  %13 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 2, i64 %12)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %24, label %18
15:
  %16 = load i64, i64* %5
  call void @_bal_panic(i64 %16)
  unreachable
17:
  call void @_bal_panic(i64 772)
  unreachable
18:
  %19 = extractvalue {i64, i1} %13, 0
  store i64 %19, i64* %2
  %20 = load i64, i64* %x
  %21 = load i64, i64* %2
  %22 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %20, i64 %21)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %30, label %25
24:
  store i64 1281, i64* %5
  br label %15
25:
  %26 = extractvalue {i64, i1} %22, 0
  store i64 %26, i64* %3
  %27 = load i64, i64* %3
  store i64 %27, i64* %x
  %28 = load i64, i64* %x
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28)
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
30:
  store i64 1281, i64* %5
  br label %15
}
define internal i64 @_B_foo(i64 %0) {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, i64* %i
  %8 = load i64, i64* %i
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %8, i64 3)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %17, label %14
11:
  %12 = load i64, i64* %3
  call void @_bal_panic(i64 %12)
  unreachable
13:
  call void @_bal_panic(i64 2308)
  unreachable
14:
  %15 = extractvalue {i64, i1} %9, 0
  store i64 %15, i64* %2
  %16 = load i64, i64* %2
  ret i64 %16
17:
  store i64 2561, i64* %3
  br label %11
}
