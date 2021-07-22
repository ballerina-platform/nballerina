@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %21, label %13
13:
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %14)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807)
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %17 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %18 = extractvalue {i64, i1} %17, 1
  br i1 %18, label %28, label %22
19:
  %20 = load i64, i64* %9
  call void @_bal_panic(i64 %20)
  unreachable
21:
  call void @_bal_panic(i64 772)
  unreachable
22:
  %23 = extractvalue {i64, i1} %17, 0
  store i64 %23, i64* %4
  %24 = load i64, i64* %4
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %24)
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775807)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %34, label %29
28:
  store i64 1793, i64* %9
  br label %19
29:
  %30 = extractvalue {i64, i1} %26, 0
  store i64 %30, i64* %6
  %31 = load i64, i64* %6
  %32 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %31, i64 1)
  %33 = extractvalue {i64, i1} %32, 1
  br i1 %33, label %39, label %35
34:
  store i64 2049, i64* %9
  br label %19
35:
  %36 = extractvalue {i64, i1} %32, 0
  store i64 %36, i64* %7
  %37 = load i64, i64* %7
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %37)
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
39:
  store i64 2049, i64* %9
  br label %19
}
