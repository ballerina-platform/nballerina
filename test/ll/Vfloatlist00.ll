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
  %4 = alloca double
  %5 = alloca double
  %6 = alloca double
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %37, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %14 = bitcast i8 addrspace(1)* %13 to [3 x i8 addrspace(1)*] addrspace(1)*
  %15 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.5)
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 0
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  %18 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 1
  store i8 addrspace(1)* %17, i8 addrspace(1)* addrspace(1)* %18
  %19 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  %20 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 2
  store i8 addrspace(1)* %19, i8 addrspace(1)* addrspace(1)* %20
  %21 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %14 to [0 x i8 addrspace(1)*] addrspace(1)*
  %22 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %23 = bitcast i8 addrspace(1)* %22 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %24 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %24
  %25 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %25
  %26 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %21, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %26
  %27 = getelementptr i8, i8 addrspace(1)* %22, i64 1297036692682702848
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %28, i8 addrspace(1)** %v
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %30 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %29, i64 72057594037927935)
  %31 = bitcast i8 addrspace(1)* %30 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %32 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 0
  %33 = load i64, i64 addrspace(1)* %32, align 8
  %34 = icmp ult i64 0, %33
  br i1 %34, label %39, label %51
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
39:
  %40 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %31, i64 0, i32 2
  %41 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %40, align 8
  %42 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %41, i64 0, i64 0
  %43 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %42, align 8
  %44 = call double @_bal_tagged_to_float(i8 addrspace(1)* %43)
  store double %44, double* %2
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %46 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %45, i64 72057594037927935)
  %47 = bitcast i8 addrspace(1)* %46 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %48 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 0
  %49 = load i64, i64 addrspace(1)* %48, align 8
  %50 = icmp ult i64 1, %49
  br i1 %50, label %53, label %68
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %8
  br label %35
53:
  %54 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %47, i64 0, i32 2
  %55 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %54, align 8
  %56 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %55, i64 0, i64 1
  %57 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %56, align 8
  %58 = call double @_bal_tagged_to_float(i8 addrspace(1)* %57)
  store double %58, double* %3
  %59 = load double, double* %2
  %60 = load double, double* %3
  %61 = fadd double %59, %60
  store double %61, double* %4
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %63 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %62, i64 72057594037927935)
  %64 = bitcast i8 addrspace(1)* %63 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %65 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 0
  %66 = load i64, i64 addrspace(1)* %65, align 8
  %67 = icmp ult i64 2, %66
  br i1 %67, label %70, label %81
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %69, i8 addrspace(1)** %8
  br label %35
70:
  %71 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 2
  %72 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %71, align 8
  %73 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 2
  %74 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %73, align 8
  %75 = call double @_bal_tagged_to_float(i8 addrspace(1)* %74)
  store double %75, double* %5
  %76 = load double, double* %4
  %77 = load double, double* %5
  %78 = fadd double %76, %77
  store double %78, double* %6
  %79 = load double, double* %6
  %80 = call i8 addrspace(1)* @_bal_float_to_tagged(double %79)
  call void @_Bio__println(i8 addrspace(1)* %80)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
81:
  %82 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %82, i8 addrspace(1)** %8
  br label %35
}
