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
  br i1 %6, label %24, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %9 = bitcast i8 addrspace(1)* %8 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %10 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %9, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %10
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
  %17 = zext i1 1 to i64
  %18 = or i64 %17, 72057594037927936
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18
  %20 = call i64 @_bal_list_set(i8 addrspace(1)* %16, i64 1, i8 addrspace(1)* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %33
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %28 = zext i1 1 to i64
  %29 = or i64 %28, 72057594037927936
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29
  %31 = call i64 @_bal_list_set(i8 addrspace(1)* %27, i64 3, i8 addrspace(1)* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %36, label %38
33:
  %34 = or i64 %20, 1280
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 %34)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %3
  br label %22
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
38:
  %39 = or i64 %31, 1536
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 %39)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %3
  br label %22
}
