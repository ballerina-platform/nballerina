@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %18, label %13
13:
  %14 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 11)
  %15 = extractvalue {i64, i1} %14, 1
  br i1 %15, label %45, label %19
16:
  %17 = load i64, i64* %9
  call void @_bal_panic(i64 %17)
  unreachable
18:
  call void @_bal_panic(i64 516)
  unreachable
19:
  %20 = extractvalue {i64, i1} %14, 0
  store i64 %20, i64* %1
  %21 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %22 = bitcast i8 addrspace(1)* %21 to [3 x i8 addrspace(1)*] addrspace(1)*
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %24 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 0
  store i8 addrspace(1)* %23, i8 addrspace(1)* addrspace(1)* %24
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %26 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 1
  store i8 addrspace(1)* %25, i8 addrspace(1)* addrspace(1)* %26
  %27 = load i64, i64* %1
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27)
  %29 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %22, i64 0, i64 2
  store i8 addrspace(1)* %28, i8 addrspace(1)* addrspace(1)* %29
  %30 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %22 to [0 x i8 addrspace(1)*] addrspace(1)*
  %31 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %32 = bitcast i8 addrspace(1)* %31 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %33 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %33
  %34 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %34
  %35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %30, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %35
  %36 = getelementptr i8, i8 addrspace(1)* %31, i64 1297036692682702848
  store i8 addrspace(1)* %36, i8 addrspace(1)** %2
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %37, i8 addrspace(1)** %v
  store i64 0, i64* %i
  %38 = load i64, i64* %i
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %40 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %39, i64 72057594037927935)
  %41 = bitcast i8 addrspace(1)* %40 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %42 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 0
  %43 = load i64, i64 addrspace(1)* %42, align 8
  %44 = icmp ult i64 %38, %43
  br i1 %44, label %46, label %59
45:
  store i64 769, i64* %9
  br label %16
46:
  %47 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 2
  %48 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %47, align 8
  %49 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %48, i64 0, i64 %38
  %50 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %49, align 8
  store i8 addrspace(1)* %50, i8 addrspace(1)** %3
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  store i64 1, i64* %i
  %52 = load i64, i64* %i
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %54 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %53, i64 72057594037927935)
  %55 = bitcast i8 addrspace(1)* %54 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %56 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 0
  %57 = load i64, i64 addrspace(1)* %56, align 8
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %60, label %73
59:
  store i64 1285, i64* %9
  br label %16
60:
  %61 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 2
  %62 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %61, align 8
  %63 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %62, i64 0, i64 %52
  %64 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %63, align 8
  store i8 addrspace(1)* %64, i8 addrspace(1)** %5
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  store i64 2, i64* %i
  %66 = load i64, i64* %i
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %68 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %67, i64 72057594037927935)
  %69 = bitcast i8 addrspace(1)* %68 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %70 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 0
  %71 = load i64, i64 addrspace(1)* %70, align 8
  %72 = icmp ult i64 %66, %71
  br i1 %72, label %74, label %80
73:
  store i64 1797, i64* %9
  br label %16
74:
  %75 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 2
  %76 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %75, align 8
  %77 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %76, i64 0, i64 %66
  %78 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %77, align 8
  store i8 addrspace(1)* %78, i8 addrspace(1)** %7
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
80:
  store i64 2309, i64* %9
  br label %16
}
