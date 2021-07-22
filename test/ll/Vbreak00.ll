@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %14, label %9
9:
  call void @_B_printIfBetween(i64 6, i64 5, i64 7)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_printIfBetween(i64 1, i64 2, i64 3)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %10 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %18, label %15
12:
  %13 = load i64, i64* %5
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 772)
  unreachable
15:
  %16 = extractvalue {i64, i1} %10, 0
  store i64 %16, i64* %3
  %17 = load i64, i64* %3
  call void @_B_printIfBetween(i64 0, i64 %17, i64 4)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
18:
  store i64 1537, i64* %5
  br label %12
}
define internal void @_B_printIfBetween(i64 %0, i64 %1, i64 %2) {
  %n = alloca i64
  %min = alloca i64
  %max = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %34, label %12
12:
  store i64 %0, i64* %n
  store i64 %1, i64* %min
  store i64 %2, i64* %max
  %13 = load i64, i64* %min
  store i64 %13, i64* %i
  br label %14
14:
  %15 = load i64, i64* %i
  %16 = load i64, i64* %max
  %17 = icmp sle i64 %15, %16
  store i1 %17, i1* %4
  %18 = load i1, i1* %4
  br i1 %18, label %20, label %19
19:
  ret void
20:
  %21 = load i64, i64* %i
  %22 = load i64, i64* %n
  %23 = icmp eq i64 %21, %22
  store i1 %23, i1* %5
  %24 = load i1, i1* %5
  br i1 %24, label %25, label %28
25:
  %26 = load i64, i64* %n
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %26)
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %19
28:
  %29 = load i64, i64* %i
  %30 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %38, label %35
32:
  %33 = load i64, i64* %8
  call void @_bal_panic(i64 %33)
  unreachable
34:
  call void @_bal_panic(i64 2308)
  unreachable
35:
  %36 = extractvalue {i64, i1} %30, 0
  store i64 %36, i64* %7
  %37 = load i64, i64* %7
  store i64 %37, i64* %i
  br label %14
38:
  store i64 4097, i64* %8
  br label %32
}
