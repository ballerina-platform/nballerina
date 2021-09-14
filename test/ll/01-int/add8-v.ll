@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %33, label %16
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775807)
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %21 = call i64 @_B_add(i64 1, i64 0)
  store i64 %21, i64* %5
  %22 = load i64, i64* %5
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22)
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %24 = call i64 @_B_add(i64 1, i64 9223372036854775806)
  store i64 %24, i64* %7
  %25 = load i64, i64* %7
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %25)
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %27 = call i64 @_B_add(i64 -1, i64 0)
  store i64 %27, i64* %9
  %28 = load i64, i64* %9
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28)
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %30 = call i64 @_B_add(i64 -1, i64 -9223372036854775806)
  store i64 %30, i64* %11
  %31 = load i64, i64* %11
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31)
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1) {
  %i = alloca i64
  %j = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %i
  store i64 %1, i64* %j
  %9 = load i64, i64* %i
  %10 = load i64, i64* %j
  %11 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844)
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
