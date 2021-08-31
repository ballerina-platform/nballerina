@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare void @_Barray__push(i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %36, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %10 = bitcast i8 addrspace(1)* %9 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %11 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %11
  %12 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %13
  %14 = getelementptr i8, i8 addrspace(1)* %9, i64 1297036692682702848
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %15, i8 addrspace(1)** %v
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Barray__push(i8 addrspace(1)* %16, i8 addrspace(1)* %17)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %19 = bitcast i8 addrspace(1)* %18 to [4 x i8 addrspace(1)*] addrspace(1)*
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %21 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 0
  store i8 addrspace(1)* %20, i8 addrspace(1)* addrspace(1)* %21
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %23 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 1
  store i8 addrspace(1)* %22, i8 addrspace(1)* addrspace(1)* %23
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %25 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 2
  store i8 addrspace(1)* %24, i8 addrspace(1)* addrspace(1)* %25
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %27 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 3
  store i8 addrspace(1)* %26, i8 addrspace(1)* addrspace(1)* %27
  %28 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %19 to [0 x i8 addrspace(1)*] addrspace(1)*
  %29 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %30 = bitcast i8 addrspace(1)* %29 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 0
  store i64 4, i64 addrspace(1)* %31
  %32 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %32
  %33 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %28, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %33
  %34 = getelementptr i8, i8 addrspace(1)* %29, i64 1297036692682702848
  store i8 addrspace(1)* %34, i8 addrspace(1)** %3
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
}
