@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %i.1 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %29, label %8
8:
  store i64 6, i64* %i
  br label %9
9:
  %10 = load i64, i64* %i
  %11 = icmp slt i64 %10, 10
  store i1 %11, i1* %1
  %12 = load i1, i1* %1
  br i1 %12, label %17, label %13
13:
  %14 = zext i1 1 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  call void @_Bio__println(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
17:
  %18 = load i64, i64* %i
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18)
  call void @_Bio__println(i8 addrspace(1)* %19)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %20 = load i64, i64* %i
  %21 = icmp eq i64 %20, 8
  store i1 %21, i1* %3
  %22 = load i1, i1* %3
  br i1 %22, label %23, label %25
23:
  %24 = load i64, i64* %i
  store i64 %24, i64* %i.1
  br label %13
25:
  br label %26
26:
  %27 = load i64, i64* %i
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %i
  br label %9
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
