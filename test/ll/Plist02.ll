@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %25, label %8
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
  store i64 0, i64* %i
  %16 = load i64, i64* %i
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %18 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %17, i64 72057594037927935)
  %19 = bitcast i8 addrspace(1)* %18 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %20 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 0
  %21 = load i64, i64 addrspace(1)* %20, align 8
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %26, label %32
23:
  %24 = load i64, i64* %4
  call void @_bal_panic(i64 %24)
  unreachable
25:
  call void @_bal_panic(i64 516)
  unreachable
26:
  %27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 2
  %28 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %27, align 8
  %29 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %28, i64 0, i64 %16
  %30 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %29, align 8
  store i8 addrspace(1)* %30, i8 addrspace(1)** %2
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
32:
  store i64 1285, i64* %4
  br label %23
}
