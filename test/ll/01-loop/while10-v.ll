@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %27, label %9
9:
  store i64 0, i64* %i
  br label %10
10:
  br label %11
11:
  %12 = load i64, i64* %i
  %13 = icmp slt i64 %12, 3
  store i1 %13, i1* %1
  %14 = load i1, i1* %1
  %15 = xor i1 1, %14
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %18, label %19
17:
  ret void
18:
  br label %17
19:
  %20 = load i64, i64* %i
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20)
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %22 = load i64, i64* %i
  %23 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %22, i64 1)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %32, label %29
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = extractvalue {i64, i1} %23, 0
  store i64 %30, i64* %4
  %31 = load i64, i64* %4
  store i64 %31, i64* %i
  br label %10
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %5
  br label %25
}
