@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  %9 = call i64 @_B_foo(i64 13, i1 0)
  store i64 %9, i64* %1
  %10 = load i64, i64* %1
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %10)
  call void @_Bio__println(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %12 = call i64 @_B_foo(i64 14, i1 1)
  store i64 %12, i64* %3
  %13 = load i64, i64* %3
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %13)
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
15:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_foo(i64 %0, i1 %1) {
  %i = alloca i64
  %b = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %20, label %9
9:
  store i64 %0, i64* %i
  store i1 %1, i1* %b
  %10 = load i1, i1* %b
  br i1 %10, label %11, label %15
11:
  %12 = load i64, i64* %i
  %13 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %12, i64 1)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %24, label %21
15:
  %16 = load i64, i64* %i
  %17 = icmp eq i64 5, 0
  br i1 %17, label %25, label %26
18:
  %19 = load i64, i64* %5
  call void @_bal_panic(i64 %19)
  unreachable
20:
  call void @_bal_panic(i64 2052)
  unreachable
21:
  %22 = extractvalue {i64, i1} %13, 0
  store i64 %22, i64* %3
  %23 = load i64, i64* %3
  ret i64 %23
24:
  store i64 2561, i64* %5
  br label %18
25:
  store i64 3074, i64* %5
  br label %18
26:
  %27 = icmp eq i64 %16, -9223372036854775808
  %28 = icmp eq i64 5, -1
  %29 = and i1 %27, %28
  br i1 %29, label %32, label %30
30:
  %31 = srem i64 %16, 5
  store i64 %31, i64* %4
  br label %33
32:
  store i64 0, i64* %4
  br label %33
33:
  %34 = load i64, i64* %4
  ret i64 %34
}
