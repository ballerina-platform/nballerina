@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %29, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %13 = bitcast i8 addrspace(1)* %12 to [1 x i8 addrspace(1)*] addrspace(1)*
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %15 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %13, i64 0, i64 0
  store i8 addrspace(1)* %14, i8 addrspace(1)* addrspace(1)* %15
  %16 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %13 to [0 x i8 addrspace(1)*] addrspace(1)*
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %18 = bitcast i8 addrspace(1)* %17 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %19 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %16, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %21
  %22 = getelementptr i8, i8 addrspace(1)* %17, i64 1297036692682702848
  store i8 addrspace(1)* %22, i8 addrspace(1)** %1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %23, i8 addrspace(1)** %x
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 504403158265495552
  br i1 %28, label %31, label %34
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %24)
  %33 = icmp eq i64 %32, 1
  store i1 %33, i1* %2
  br label %35
34:
  store i1 0, i1* %2
  br label %35
35:
  %36 = load i1, i1* %2
  %37 = zext i1 %36 to i64
  %38 = or i64 %37, 72057594037927936
  %39 = getelementptr i8, i8 addrspace(1)* null, i64 %38
  call void @_Bio__println(i8 addrspace(1)* %39)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %41 = zext i1 1 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42
  %44 = icmp ne i8 addrspace(1)* %40, %43
  store i1 %44, i1* %4
  %45 = load i1, i1* %4
  %46 = zext i1 %45 to i64
  %47 = or i64 %46, 72057594037927936
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %50 = icmp eq i8 addrspace(1)* %49, null
  store i1 %50, i1* %6
  %51 = load i1, i1* %6
  %52 = zext i1 %51 to i64
  %53 = or i64 %52, 72057594037927936
  %54 = getelementptr i8, i8 addrspace(1)* null, i64 %53
  call void @_Bio__println(i8 addrspace(1)* %54)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
}
