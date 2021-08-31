@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %29, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %11 = bitcast i8 addrspace(1)* %10 to [1 x i8 addrspace(1)*] addrspace(1)*
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %13 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %11, i64 0, i64 0
  store i8 addrspace(1)* %12, i8 addrspace(1)* addrspace(1)* %13
  %14 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %11 to [0 x i8 addrspace(1)*] addrspace(1)*
  %15 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %16 = bitcast i8 addrspace(1)* %15 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %17 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %17
  %18 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %18
  %19 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %14, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %19
  %20 = getelementptr i8, i8 addrspace(1)* %15, i64 1297036692682702848
  store i8 addrspace(1)* %20, i8 addrspace(1)** %1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %21, i8 addrspace(1)** %x
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %23 = addrspacecast i8 addrspace(1)* %22 to i8*
  %24 = ptrtoint i8* %23 to i64
  %25 = and i64 %24, 1080863910568919040
  %26 = icmp eq i64 %25, 144115188075855872
  br i1 %26, label %31, label %38
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  store i8 addrspace(1)* %22, i8 addrspace(1)** %2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 72057594037927935)
  %34 = bitcast i8 addrspace(1)* %33 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %35 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 0
  %36 = load i64, i64 addrspace(1)* %35, align 8
  %37 = icmp ult i64 0, %36
  br i1 %37, label %40, label %46
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %5
  br label %27
40:
  %41 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 2
  %42 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %41, align 8
  %43 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %42, i64 0, i64 0
  %44 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %43, align 8
  store i8 addrspace(1)* %44, i8 addrspace(1)** %3
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %47, i8 addrspace(1)** %5
  br label %27
}
