@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %31, label %10
10:
  store i64 0, i64* %i
  br label %11
11:
  %12 = load i64, i64* %i
  %13 = icmp sge i64 %12, 0
  store i1 %13, i1* %1
  %14 = load i1, i1* %1
  br i1 %14, label %15, label %21
15:
  %16 = load i64, i64* %i
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %18 = load i64, i64* %i
  %19 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %18, i64 1)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %38, label %32
21:
  ret void
22:
  %23 = load i64, i64* %i
  %24 = icmp eq i64 %23, 4
  store i1 %24, i1* %5
  %25 = load i1, i1* %5
  br i1 %25, label %26, label %27
26:
  br label %21
27:
  br label %28
28:
  br label %11
29:
  %30 = load i64, i64* %6
  call void @_bal_panic(i64 %30)
  unreachable
31:
  call void @_bal_panic(i64 772)
  unreachable
32:
  %33 = extractvalue {i64, i1} %19, 0
  store i64 %33, i64* %3
  %34 = load i64, i64* %3
  store i64 %34, i64* %i
  %35 = load i64, i64* %i
  %36 = icmp sge i64 %35, 1
  store i1 %36, i1* %4
  %37 = load i1, i1* %4
  br i1 %37, label %22, label %28
38:
  store i64 2817, i64* %6
  br label %29
}
