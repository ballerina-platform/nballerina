@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %40, label %13
13:
  %14 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %15 = bitcast i8 addrspace(1)* %14 to [3 x i8 addrspace(1)*] addrspace(1)*
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %15, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %16
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1234567890123456789)
  %18 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %15, i64 0, i64 1
  store i8 addrspace(1)* %17, i8 addrspace(1)* addrspace(1)* %18
  %19 = zext i1 1 to i64
  %20 = or i64 %19, 72057594037927936
  %21 = getelementptr i8, i8 addrspace(1)* null, i64 %20
  %22 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %15, i64 0, i64 2
  store i8 addrspace(1)* %21, i8 addrspace(1)* addrspace(1)* %22
  %23 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %15 to [0 x i8 addrspace(1)*] addrspace(1)*
  %24 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %25 = bitcast i8 addrspace(1)* %24 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %26 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %26
  %27 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %28
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %23, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %29
  %30 = getelementptr i8, i8 addrspace(1)* %24, i64 1297036692682702848
  store i8 addrspace(1)* %30, i8 addrspace(1)** %1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %31, i8 addrspace(1)** %v
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 72057594037927935)
  %34 = bitcast i8 addrspace(1)* %33 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %35 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 1
  %36 = load i64, i64 addrspace(1)* %35, align 8
  %37 = icmp ult i64 2, %36
  br i1 %37, label %42, label %54
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
42:
  %43 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 3
  %44 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %43, align 8
  %45 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %44, i64 0, i64 2
  %46 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %45, align 8
  store i8 addrspace(1)* %46, i8 addrspace(1)** %2
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %49 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %48, i64 72057594037927935)
  %50 = bitcast i8 addrspace(1)* %49 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %51 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 1
  %52 = load i64, i64 addrspace(1)* %51, align 8
  %53 = icmp ult i64 1, %52
  br i1 %53, label %56, label %68
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %9
  br label %38
56:
  %57 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 3
  %58 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %57, align 8
  %59 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %58, i64 0, i64 1
  %60 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %59, align 8
  store i8 addrspace(1)* %60, i8 addrspace(1)** %4
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %63 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %62, i64 72057594037927935)
  %64 = bitcast i8 addrspace(1)* %63 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %65 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 1
  %66 = load i64, i64 addrspace(1)* %65, align 8
  %67 = icmp ult i64 0, %66
  br i1 %67, label %70, label %88
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541)
  store i8 addrspace(1)* %69, i8 addrspace(1)** %9
  br label %38
70:
  %71 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 3
  %72 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %71, align 8
  %73 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 0
  %74 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %73, align 8
  store i8 addrspace(1)* %74, i8 addrspace(1)** %6
  %75 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %76 = bitcast i8 addrspace(1)* %75 to [1 x i8 addrspace(1)*] addrspace(1)*
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %78 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %76, i64 0, i64 0
  store i8 addrspace(1)* %77, i8 addrspace(1)* addrspace(1)* %78
  %79 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %76 to [0 x i8 addrspace(1)*] addrspace(1)*
  %80 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %81 = bitcast i8 addrspace(1)* %80 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %82 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %81, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %82
  %83 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %81, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %83
  %84 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %81, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %84
  %85 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %81, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %79, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %85
  %86 = getelementptr i8, i8 addrspace(1)* %80, i64 1297036692682702848
  store i8 addrspace(1)* %86, i8 addrspace(1)** %7
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %87)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
88:
  %89 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797)
  store i8 addrspace(1)* %89, i8 addrspace(1)** %9
  br label %38
}
