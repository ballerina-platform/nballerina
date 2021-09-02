@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca double
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %30, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %11 = bitcast i8 addrspace(1)* %10 to [1 x i8 addrspace(1)*] addrspace(1)*
  %12 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.0)
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
  store i8 addrspace(1)* %21, i8 addrspace(1)** %v
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %23 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %22, i64 72057594037927935)
  %24 = bitcast i8 addrspace(1)* %23 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %25 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 0
  %26 = load i64, i64 addrspace(1)* %25, align 8
  %27 = icmp ult i64 0, %26
  br i1 %27, label %32, label %42
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 2
  %34 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %33, align 8
  %35 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %34, i64 0, i64 0
  %36 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %35, align 8
  %37 = call double @_bal_tagged_to_float(i8 addrspace(1)* %36)
  store double %37, double* %2
  %38 = load double, double* %2
  %39 = fadd double %38, 0.5
  store double %39, double* %3
  %40 = load double, double* %3
  %41 = call i8 addrspace(1)* @_bal_float_to_tagged(double %40)
  call void @_Bio__println(i8 addrspace(1)* %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %43, i8 addrspace(1)** %5
  br label %28
}
