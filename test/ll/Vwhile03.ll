@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i1
  %j = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  store i64 0, i64* %i
  br label %11
11:
  %12 = load i64, i64* %i
  %13 = icmp slt i64 %12, 5
  store i1 %13, i1* %1
  %14 = load i1, i1* %1
  br i1 %14, label %16, label %15
15:
  ret void
16:
  store i64 0, i64* %j
  br label %17
17:
  %18 = load i64, i64* %j
  %19 = load i64, i64* %i
  %20 = icmp slt i64 %18, %19
  store i1 %20, i1* %2
  %21 = load i1, i1* %2
  br i1 %21, label %26, label %22
22:
  %23 = load i64, i64* %i
  %24 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %23, i64 1)
  %25 = extractvalue {i64, i1} %24, 1
  br i1 %25, label %38, label %35
26:
  %27 = load i64, i64* %j
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27)
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %29 = load i64, i64* %j
  %30 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %42, label %39
32:
  %33 = load i64, i64* %6
  call void @_bal_panic(i64 %33)
  unreachable
34:
  call void @_bal_panic(i64 772)
  unreachable
35:
  %36 = extractvalue {i64, i1} %24, 0
  store i64 %36, i64* %5
  %37 = load i64, i64* %5
  store i64 %37, i64* %i
  br label %11
38:
  store i64 2817, i64* %6
  br label %32
39:
  %40 = extractvalue {i64, i1} %30, 0
  store i64 %40, i64* %4
  %41 = load i64, i64* %4
  store i64 %41, i64* %j
  br label %17
42:
  store i64 2305, i64* %6
  br label %32
}
