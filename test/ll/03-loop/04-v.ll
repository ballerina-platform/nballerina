@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %22, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  store i64 2, i64* %i
  br label %10
10:
  %11 = load i64, i64* %i
  %12 = icmp slt i64 %11, 1
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %16, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
16:
  %17 = load i64, i64* %i
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17)
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %19
19:
  %20 = load i64, i64* %i
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %i
  br label %10
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
}
