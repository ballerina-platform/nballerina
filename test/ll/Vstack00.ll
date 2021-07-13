@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_foo(i64 0, i64 5)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
6:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_inc(i64 %0) {
  %n = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, i64* %n
  %8 = load i64, i64* %n
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %17, label %14
11:
  %12 = load i64, i64* %3
  call void @_bal_panic(i64 %12)
  unreachable
13:
  call void @_bal_panic(i64 3076)
  unreachable
14:
  %15 = extractvalue {i64, i1} %9, 0
  store i64 %15, i64* %2
  %16 = load i64, i64* %2
  ret i64 %16
17:
  store i64 3329, i64* %3
  br label %11
}
define internal void @_B_foo(i64 %0, i64 %1) {
  %depth = alloca i64
  %maxDepth = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %28, label %12
12:
  store i64 %0, i64* %depth
  store i64 %1, i64* %maxDepth
  %13 = load i64, i64* %depth
  %14 = load i64, i64* %maxDepth
  %15 = icmp eq i64 %13, %14
  store i1 %15, i1* %3
  %16 = load i1, i1* %3
  br i1 %16, label %17, label %18
17:
  ret void
18:
  %19 = load i64, i64* %depth
  %20 = call i64 @_B_inc(i64 %19)
  store i64 %20, i64* %4
  %21 = load i64, i64* %4
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %23 = load i64, i64* %depth
  %24 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %23, i64 1)
  %25 = extractvalue {i64, i1} %24, 1
  br i1 %25, label %33, label %29
26:
  %27 = load i64, i64* %8
  call void @_bal_panic(i64 %27)
  unreachable
28:
  call void @_bal_panic(i64 4100)
  unreachable
29:
  %30 = extractvalue {i64, i1} %24, 0
  store i64 %30, i64* %6
  %31 = load i64, i64* %6
  %32 = load i64, i64* %maxDepth
  call void @_B_foo(i64 %31, i64 %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
33:
  store i64 5377, i64* %8
  br label %26
}
