@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Barray__push(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %31, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %13 = bitcast i8 addrspace(1)* %12 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %14 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %15
  %16 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %16
  %17 = getelementptr i8, i8 addrspace(1)* %12, i64 1297036692682702848
  store i8 addrspace(1)* %17, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %v
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_Barray__push(i8 addrspace(1)* %19, i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %22 = zext i1 1 to i64
  %23 = or i64 %22, 72057594037927936
  %24 = getelementptr i8, i8 addrspace(1)* null, i64 %23
  call void @_Barray__push(i8 addrspace(1)* %21, i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_Barray__push(i8 addrspace(1)* %25, i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Barray__push(i8 addrspace(1)* %27, i8 addrspace(1)* null)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_Barray__push(i8 addrspace(1)* %28, i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
31:
  call void @_bal_panic(i64 516)
  unreachable
}
