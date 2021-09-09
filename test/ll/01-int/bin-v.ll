@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i64 @_B_bin(i64 6, i64 2, i64 3)
  store i64 %7, i64* %1
  %8 = load i64, i64* %1
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal i64 @_B_bin(i64 %0, i64 %1, i64 %2) {
  %x = alloca i64
  %y = alloca i64
  %z = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %17, label %10
10:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  store i64 %2, i64* %z
  %11 = load i64, i64* %x
  %12 = load i64, i64* %y
  %13 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %11, i64 %12)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %24, label %19
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796)
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = extractvalue {i64, i1} %13, 0
  store i64 %20, i64* %4
  %21 = load i64, i64* %4
  %22 = load i64, i64* %z
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %28
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %6
  br label %15
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 2050)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %6
  br label %15
28:
  %29 = icmp eq i64 %21, -9223372036854775808
  %30 = icmp eq i64 %22, -1
  %31 = and i1 %29, %30
  br i1 %31, label %35, label %32
32:
  %33 = sdiv i64 %21, %22
  store i64 %33, i64* %5
  %34 = load i64, i64* %5
  ret i64 %34
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %6
  br label %15
}
