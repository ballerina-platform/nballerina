@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %22, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 57)
  call void @_B_foo(i8 addrspace(1)* %13)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %14 = zext i1 1 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  call void @_B_foo(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_B_foo(i8 addrspace(1)* null)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807)
  call void @_B_foo(i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %18 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775807)
  %19 = extractvalue {i64, i1} %18, 1
  br i1 %19, label %28, label %23
20:
  %21 = load i64, i64* %8
  call void @_bal_panic(i64 %21)
  unreachable
22:
  call void @_bal_panic(i64 516)
  unreachable
23:
  %24 = extractvalue {i64, i1} %18, 0
  store i64 %24, i64* %5
  %25 = load i64, i64* %5
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %25, i64 1)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %33, label %29
28:
  store i64 1793, i64* %8
  br label %20
29:
  %30 = extractvalue {i64, i1} %26, 0
  store i64 %30, i64* %6
  %31 = load i64, i64* %6
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31)
  call void @_B_foo(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
33:
  store i64 1793, i64* %8
  br label %20
}
define internal void @_B_foo(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %8, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %7)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
8:
  call void @_bal_panic(i64 2564)
  unreachable
}
