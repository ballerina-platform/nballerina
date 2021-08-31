@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_Barray__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %31, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %9 = bitcast i8 addrspace(1)* %8 to [3 x i8 addrspace(1)*] addrspace(1)*
  %10 = zext i1 1 to i64
  %11 = or i64 %10, 72057594037927936
  %12 = getelementptr i8, i8 addrspace(1)* null, i64 %11
  %13 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %9, i64 0, i64 0
  store i8 addrspace(1)* %12, i8 addrspace(1)* addrspace(1)* %13
  %14 = zext i1 0 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  %17 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %9, i64 0, i64 1
  store i8 addrspace(1)* %16, i8 addrspace(1)* addrspace(1)* %17
  %18 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %9, i64 0, i64 2
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %18
  %19 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %9 to [0 x i8 addrspace(1)*] addrspace(1)*
  %20 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %21 = bitcast i8 addrspace(1)* %20 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %22 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %22
  %23 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %23
  %24 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %19, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %24
  %25 = getelementptr i8, i8 addrspace(1)* %20, i64 1297036692682702848
  store i8 addrspace(1)* %25, i8 addrspace(1)** %1
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %26, i8 addrspace(1)** %v
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %28 = call i64 @_Barray__length(i8 addrspace(1)* %27)
  store i64 %28, i64* %2
  %29 = load i64, i64* %2
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %29)
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
}
