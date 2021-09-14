@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i1 @_bal_list_has_type(i8 addrspace(1)*, i64) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %iv = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %iv2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %33, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %12 = bitcast i8 addrspace(1)* %11 to [3 x i8 addrspace(1)*] addrspace(1)*
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %14 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 0
  store i8 addrspace(1)* %13, i8 addrspace(1)* addrspace(1)* %14
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 1
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %18 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 2
  store i8 addrspace(1)* %17, i8 addrspace(1)* addrspace(1)* %18
  %19 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %12 to [0 x i8 addrspace(1)*] addrspace(1)*
  %20 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %21 = bitcast i8 addrspace(1)* %20 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %22
  %23 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %23
  %24 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %24
  %25 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %19, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %25
  %26 = getelementptr i8, i8 addrspace(1)* %20, i64 1297036692682702848
  store i8 addrspace(1)* %26, i8 addrspace(1)** %1
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %27, i8 addrspace(1)** %iv
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %iv
  store i8 addrspace(1)* %28, i8 addrspace(1)** %v
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %30 = call i1 @_bal_list_has_type(i8 addrspace(1)* %29, i64 128)
  br i1 %30, label %35, label %45
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  store i8 addrspace(1)* %29, i8 addrspace(1)** %2
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %36, i8 addrspace(1)** %iv2
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %iv2
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %iv
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %iv2
  %40 = icmp eq i8 addrspace(1)* %38, %39
  store i1 %40, i1* %4
  %41 = load i1, i1* %4
  %42 = zext i1 %41 to i64
  %43 = or i64 %42, 72057594037927936
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 1795)
  store i8 addrspace(1)* %46, i8 addrspace(1)** %6
  br label %31
}
