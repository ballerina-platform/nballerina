@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %33, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %11 = bitcast i8 addrspace(1)* %10 to [1 x i8 addrspace(1)*] addrspace(1)*
  %12 = zext i1 1 to i64
  %13 = or i64 %12, 72057594037927936
  %14 = getelementptr i8, i8 addrspace(1)* null, i64 %13
  %15 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 0
  store i8 addrspace(1)* %14, i8 addrspace(1)* addrspace(1)* %15
  %16 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %11 to [0 x i8 addrspace(1)*] addrspace(1)*
  %17 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %18 = bitcast i8 addrspace(1)* %17 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %18, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %16, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %22
  %23 = getelementptr i8, i8 addrspace(1)* %17, i64 1297036692682702848
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %24, i8 addrspace(1)** %v
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %25, i64 72057594037927935)
  %27 = bitcast i8 addrspace(1)* %26 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %28 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 1
  %29 = load i64, i64 addrspace(1)* %28, align 8
  %30 = icmp ult i64 0, %29
  br i1 %30, label %35, label %49
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 3
  %37 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36, align 8
  %38 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %37, i64 0, i64 0
  %39 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %38, align 8
  %40 = addrspacecast i8 addrspace(1)* %39 to i8*
  %41 = ptrtoint i8* %40 to i64
  %42 = trunc i64 %41 to i1
  store i1 %42, i1* %2
  %43 = load i1, i1* %2
  %44 = xor i1 1, %43
  store i1 %44, i1* %3
  %45 = load i1, i1* %3
  %46 = zext i1 %45 to i64
  %47 = or i64 %46, 72057594037927936
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541)
  store i8 addrspace(1)* %50, i8 addrspace(1)** %5
  br label %31
}
