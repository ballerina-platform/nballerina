@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %21, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %9 = bitcast i8 addrspace(1)* %8 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %10 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 0
  store i64 1024, i64 addrspace(1)* %10
  %11 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %11
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %13
  %14 = getelementptr i8, i8 addrspace(1)* %8, i64 1297036692682702848
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %15, i8 addrspace(1)** %x
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %17 = call i64 @_bal_list_set(i8 addrspace(1)* %16, i64 1, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %27
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %25 = call i64 @_bal_list_set(i8 addrspace(1)* %24, i64 3, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %30, label %32
27:
  %28 = or i64 %17, 1536
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 %28)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %3
  br label %19
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
32:
  %33 = or i64 %25, 1792
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 %33)
  store i8 addrspace(1)* %34, i8 addrspace(1)** %3
  br label %19
}
