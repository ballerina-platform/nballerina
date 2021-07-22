@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %26, label %9
9:
  store i64 0, i64* %i
  br label %10
10:
  %11 = load i64, i64* %i
  %12 = icmp slt i64 %11, 3
  store i1 %12, i1* %1
  %13 = load i1, i1* %1
  %14 = xor i1 1, %13
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %17, label %18
16:
  ret void
17:
  br label %16
18:
  %19 = load i64, i64* %i
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %19)
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %21 = load i64, i64* %i
  %22 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %21, i64 1)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %30, label %27
24:
  %25 = load i64, i64* %5
  call void @_bal_panic(i64 %25)
  unreachable
26:
  call void @_bal_panic(i64 772)
  unreachable
27:
  %28 = extractvalue {i64, i1} %22, 0
  store i64 %28, i64* %4
  %29 = load i64, i64* %4
  store i64 %29, i64* %i
  br label %10
30:
  store i64 3329, i64* %5
  br label %24
}
