@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %25, label %9
9:
  store i64 0, i64* %i
  br label %10
10:
  %11 = load i64, i64* %i
  %12 = icmp sge i64 %11, 0
  store i1 %12, i1* %4
  %13 = load i1, i1* %4
  br i1 %13, label %15, label %14
14:
  ret void
15:
  %16 = load i64, i64* %i
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %18 = load i64, i64* %i
  %19 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %18, i64 1)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %32, label %26
21:
  br label %14
22:
  br label %10
23:
  %24 = load i64, i64* %5
  call void @_bal_panic(i64 %24)
  unreachable
25:
  call void @_bal_panic(i64 772)
  unreachable
26:
  %27 = extractvalue {i64, i1} %19, 0
  store i64 %27, i64* %2
  %28 = load i64, i64* %2
  store i64 %28, i64* %i
  %29 = load i64, i64* %i
  %30 = icmp eq i64 %29, 2
  store i1 %30, i1* %3
  %31 = load i1, i1* %3
  br i1 %31, label %21, label %22
32:
  store i64 2305, i64* %5
  br label %23
}
