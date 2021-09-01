@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %34, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_mapping_construct(i64 2)
  %14 = zext i1 1 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %16)
  %17 = zext i1 0 to i64
  %18 = or i64 %17, 72057594037927936
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %19)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %m
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %22 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  store i8 addrspace(1)* %22, i8 addrspace(1)** %2
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %25 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113))
  store i8 addrspace(1)* %25, i8 addrspace(1)** %4
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %28 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %27, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114))
  store i8 addrspace(1)* %28, i8 addrspace(1)** %7
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %30 = icmp eq i8 addrspace(1)* %29, null
  store i1 %30, i1* %6
  %31 = load i1, i1* %6
  br i1 %31, label %32, label %33
32:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621228910))
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %33
33:
  ret void
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
}
