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
  br i1 %8, label %32, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %11 = bitcast i8 addrspace(1)* %10 to [1 x i8 addrspace(1)*] addrspace(1)*
  %12 = zext i1 1 to i64
  %13 = or i64 %12, 72057594037927936
  %14 = getelementptr i8, i8 addrspace(1)* null, i64 %13
  %15 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 0
  store i8 addrspace(1)* %14, i8 addrspace(1)* addrspace(1)* %15
  %16 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %11 to [0 x i8 addrspace(1)*] addrspace(1)*
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
  store i8 addrspace(1)* %23, i8 addrspace(1)** %v
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %25 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %24, i64 72057594037927935)
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 0
  %28 = load i64, i64 addrspace(1)* %27, align 8
  %29 = icmp ult i64 0, %28
  br i1 %29, label %34, label %48
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  %36 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %35, align 8
  %37 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %36, i64 0, i64 0
  %38 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %37, align 8
  %39 = addrspacecast i8 addrspace(1)* %38 to i8*
  %40 = ptrtoint i8* %39 to i64
  %41 = trunc i64 %40 to i1
  store i1 %41, i1* %2
  %42 = load i1, i1* %2
  %43 = xor i1 1, %42
  store i1 %43, i1* %3
  %44 = load i1, i1* %3
  %45 = zext i1 %44 to i64
  %46 = or i64 %45, 72057594037927936
  %47 = getelementptr i8, i8 addrspace(1)* null, i64 %46
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %5
  br label %30
}
