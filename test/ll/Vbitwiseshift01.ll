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
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %25, label %13
13:
  store i64 7, i64* %i
  store i64 1, i64* %j
  %14 = load i64, i64* %i
  %15 = load i64, i64* %j
  %16 = and i64 63, %15
  %17 = ashr i64 %14, %16
  store i64 %17, i64* %1
  %18 = load i64, i64* %1
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %20 = load i64, i64* %j
  %21 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %20, i64 1)
  %22 = extractvalue {i64, i1} %21, 1
  br i1 %22, label %41, label %26
23:
  %24 = load i64, i64* %9
  call void @_bal_panic(i64 %24)
  unreachable
25:
  call void @_bal_panic(i64 516)
  unreachable
26:
  %27 = extractvalue {i64, i1} %21, 0
  store i64 %27, i64* %3
  %28 = load i64, i64* %i
  %29 = load i64, i64* %3
  %30 = and i64 63, %29
  %31 = ashr i64 %28, %30
  store i64 %31, i64* %4
  %32 = load i64, i64* %4
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %32)
  call void @_Bio__println(i8 addrspace(1)* %33)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  store i64 65, i64* %j
  %34 = load i64, i64* %i
  %35 = load i64, i64* %j
  %36 = and i64 63, %35
  %37 = ashr i64 %34, %36
  store i64 %37, i64* %6
  %38 = load i64, i64* %6
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38)
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
41:
  store i64 1537, i64* %9
  br label %23
}
