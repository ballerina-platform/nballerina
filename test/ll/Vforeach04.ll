@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %24, label %7
7:
  store i64 6, i64* %i
  br label %8
8:
  %9 = load i64, i64* %i
  %10 = icmp slt i64 %9, 10
  store i1 %10, i1* %1
  %11 = load i1, i1* %1
  br i1 %11, label %13, label %12
12:
  ret void
13:
  %14 = load i64, i64* %i
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %14)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %16 = load i64, i64* %i
  %17 = icmp eq i64 %16, 8
  store i1 %17, i1* %3
  %18 = load i1, i1* %3
  br i1 %18, label %19, label %23
19:
  br label %20
20:
  %21 = load i64, i64* %i
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %i
  br label %8
23:
  br label %20
24:
  call void @_bal_panic(i64 772)
  unreachable
}
