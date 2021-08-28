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
  br i1 %12, label %39, label %13
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
  %24 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %25 = bitcast i8 addrspace(1)* %24 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %26 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %26
  %27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %23, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %28
  %29 = getelementptr i8, i8 addrspace(1)* %24, i64 1297036692682702848
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %30, i8 addrspace(1)** %v
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %32 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %31, i64 72057594037927935)
  %33 = bitcast i8 addrspace(1)* %32 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %34 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 0
  %35 = load i64, i64 addrspace(1)* %34, align 8
  %36 = icmp ult i64 2, %35
  br i1 %36, label %41, label %53
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
41:
  %42 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 2
  %43 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %42, align 8
  %44 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %43, i64 0, i64 2
  %45 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %44, align 8
  store i8 addrspace(1)* %45, i8 addrspace(1)** %2
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %48 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %47, i64 72057594037927935)
  %49 = bitcast i8 addrspace(1)* %48 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %50 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 0
  %51 = load i64, i64 addrspace(1)* %50, align 8
  %52 = icmp ult i64 1, %51
  br i1 %52, label %55, label %67
53:
  %54 = call i8 addrspace(1)* @_bal_panic_construct(i64 1029)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %9
  br label %37
55:
  %56 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 2
  %57 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %56, align 8
  %58 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %57, i64 0, i64 1
  %59 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %58, align 8
  store i8 addrspace(1)* %59, i8 addrspace(1)** %4
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %62 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %61, i64 72057594037927935)
  %63 = bitcast i8 addrspace(1)* %62 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %64 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 0
  %65 = load i64, i64 addrspace(1)* %64, align 8
  %66 = icmp ult i64 0, %65
  br i1 %66, label %69, label %86
67:
  %68 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %68, i8 addrspace(1)** %9
  br label %37
69:
  %70 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %63, i64 0, i32 2
  %71 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %70, align 8
  %72 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %71, i64 0, i64 0
  %73 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %72, align 8
  store i8 addrspace(1)* %73, i8 addrspace(1)** %6
  %74 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %75 = bitcast i8 addrspace(1)* %74 to [1 x i8 addrspace(1)*] addrspace(1)*
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %77 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %75, i64 0, i64 0
  store i8 addrspace(1)* %76, i8 addrspace(1)* addrspace(1)* %77
  %78 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %75 to [0 x i8 addrspace(1)*] addrspace(1)*
  %79 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %80 = bitcast i8 addrspace(1)* %79 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %81 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %81
  %82 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %82
  %83 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %78, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %83
  %84 = getelementptr i8, i8 addrspace(1)* %79, i64 1297036692682702848
  store i8 addrspace(1)* %84, i8 addrspace(1)** %7
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
86:
  %87 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541)
  store i8 addrspace(1)* %87, i8 addrspace(1)** %9
  br label %37
}
