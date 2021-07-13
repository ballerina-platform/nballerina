@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i64 @_B_bin(i64 %0, i64 %1, i64 %2) {
  %x = alloca i64
  %y = alloca i64
  %z = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
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
  br i1 %14, label %23, label %18
15:
  %16 = load i64, i64* %6
  call void @_bal_panic(i64 %16)
  unreachable
17:
  call void @_bal_panic(i64 1796)
  unreachable
18:
  %19 = extractvalue {i64, i1} %13, 0
  store i64 %19, i64* %4
  %20 = load i64, i64* %4
  %21 = load i64, i64* %z
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %24, label %25
23:
  store i64 2049, i64* %6
  br label %15
24:
  store i64 2050, i64* %6
  br label %15
25:
  %26 = icmp eq i64 %20, -9223372036854775808
  %27 = icmp eq i64 %21, -1
  %28 = and i1 %26, %27
  br i1 %28, label %32, label %29
29:
  %30 = sdiv i64 %20, %21
  store i64 %30, i64* %5
  %31 = load i64, i64* %5
  ret i64 %31
32:
  store i64 2049, i64* %6
  br label %15
}
