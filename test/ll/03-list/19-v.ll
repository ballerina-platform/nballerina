@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Barray__push(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_Barray__length(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %36, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %11 = bitcast i8 addrspace(1)* %10 to [4 x i8 addrspace(1)*] addrspace(1)*
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %13 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 0
  store i8 addrspace(1)* %12, i8 addrspace(1)* addrspace(1)* %13
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %15 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 1
  store i8 addrspace(1)* %14, i8 addrspace(1)* addrspace(1)* %15
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %17 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 2
  store i8 addrspace(1)* %16, i8 addrspace(1)* addrspace(1)* %17
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  %19 = getelementptr inbounds [4 x i8 addrspace(1)*], [4 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 3
  store i8 addrspace(1)* %18, i8 addrspace(1)* addrspace(1)* %19
  %20 = bitcast [4 x i8 addrspace(1)*] addrspace(1)* %11 to [0 x i8 addrspace(1)*] addrspace(1)*
  %21 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %22 = bitcast i8 addrspace(1)* %21 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %23 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %22, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %23
  %24 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %22, i64 0, i32 1
  store i64 4, i64 addrspace(1)* %24
  %25 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %22, i64 0, i32 2
  store i64 4, i64 addrspace(1)* %25
  %26 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %22, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %20, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %26
  %27 = getelementptr i8, i8 addrspace(1)* %21, i64 1297036692682702848
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %28, i8 addrspace(1)** %v
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_Barray__push(i8 addrspace(1)* %29, i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %33 = call i64 @_Barray__length(i8 addrspace(1)* %32)
  store i64 %33, i64* %4
  %34 = load i64, i64* %4
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34)
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
}
