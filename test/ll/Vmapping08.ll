@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %s = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %18, label %8
8:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)** %s
  %9 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %m
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %14 = call i64 @_bal_mapping_set(i8 addrspace(1)* %11, i8 addrspace(1)* %12, i8 addrspace(1)* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %25
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %23 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %21, i8 addrspace(1)* %22)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %2
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
25:
  %26 = or i64 %14, 1536
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 %26)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %4
  br label %16
}
