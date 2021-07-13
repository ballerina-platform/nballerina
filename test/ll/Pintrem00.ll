@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %13, label %8
8:
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 10000)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %20, label %14
11:
  %12 = load i64, i64* %4
  call void @_bal_panic(i64 %12)
  unreachable
13:
  call void @_bal_panic(i64 772)
  unreachable
14:
  %15 = extractvalue {i64, i1} %9, 0
  store i64 %15, i64* %1
  %16 = load i64, i64* %1
  %17 = call i64 @_B_rem(i64 %16, i64 0)
  store i64 %17, i64* %2
  %18 = load i64, i64* %2
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
20:
  store i64 1025, i64* %4
  br label %11
}
define internal i64 @_B_rem(i64 %0, i64 %1) {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %16
12:
  %13 = load i64, i64* %4
  call void @_bal_panic(i64 %13)
  unreachable
14:
  call void @_bal_panic(i64 1796)
  unreachable
15:
  store i64 2050, i64* %4
  br label %12
16:
  %17 = icmp eq i64 %9, -9223372036854775808
  %18 = icmp eq i64 %10, -1
  %19 = and i1 %17, %18
  br i1 %19, label %22, label %20
20:
  %21 = srem i64 %9, %10
  store i64 %21, i64* %3
  br label %23
22:
  store i64 0, i64* %3
  br label %23
23:
  %24 = load i64, i64* %3
  ret i64 %24
}
