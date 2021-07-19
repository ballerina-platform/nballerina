@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %i = alloca i64
  %j = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %24, label %12
12:
  store i64 7, i64* %i
  store i64 2, i64* %j
  %13 = load i64, i64* %i
  %14 = load i64, i64* %j
  %15 = and i64 63, %14
  %16 = shl i64 %13, %15
  store i64 %16, i64* %1
  %17 = load i64, i64* %1
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %19 = load i64, i64* %j
  %20 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %19, i64 1)
  %21 = extractvalue {i64, i1} %20, 1
  br i1 %21, label %39, label %25
22:
  %23 = load i64, i64* %8
  call void @_bal_panic(i64 %23)
  unreachable
24:
  call void @_bal_panic(i64 772)
  unreachable
25:
  %26 = extractvalue {i64, i1} %20, 0
  store i64 %26, i64* %3
  %27 = load i64, i64* %i
  %28 = load i64, i64* %3
  %29 = and i64 63, %28
  %30 = shl i64 %27, %29
  store i64 %30, i64* %4
  %31 = load i64, i64* %4
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31)
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  store i64 67, i64* %j
  %33 = load i64, i64* %i
  %34 = load i64, i64* %j
  %35 = and i64 63, %34
  %36 = shl i64 %33, %35
  store i64 %36, i64* %6
  %37 = load i64, i64* %6
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %37)
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
39:
  store i64 1793, i64* %8
  br label %22
}
