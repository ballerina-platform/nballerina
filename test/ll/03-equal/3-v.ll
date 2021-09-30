@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %124, label %17
17:
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %19 = bitcast i8 addrspace(1)* %18 to [1 x i8 addrspace(1)*] addrspace(1)*
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %21 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %19, i64 0, i64 0
  store i8 addrspace(1)* %20, i8 addrspace(1)* addrspace(1)* %21
  %22 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %19 to [0 x i8 addrspace(1)*] addrspace(1)*
  %23 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %24 = bitcast i8 addrspace(1)* %23 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %25 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %25
  %26 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %26
  %27 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %24, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %22, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %28
  %29 = getelementptr i8, i8 addrspace(1)* %23, i64 1297036692682702852
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %31 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %30, i64 -5)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %32, i8 addrspace(1)** %y
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !10
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %y, !dbg !10
  call void @_B_printEq(i8 addrspace(1)* %33, i8 addrspace(1)* %34), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  %35 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %36 = bitcast i8 addrspace(1)* %35 to [1 x i8 addrspace(1)*] addrspace(1)*
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %38 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %36, i64 0, i64 0
  store i8 addrspace(1)* %37, i8 addrspace(1)* addrspace(1)* %38
  %39 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %36 to [0 x i8 addrspace(1)*] addrspace(1)*
  %40 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %41 = bitcast i8 addrspace(1)* %40 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %42 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %42
  %43 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %43
  %44 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %44
  %45 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %39, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %45
  %46 = getelementptr i8, i8 addrspace(1)* %40, i64 1297036692682702852
  store i8 addrspace(1)* %46, i8 addrspace(1)** %3
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !11
  %48 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %47, i64 -5), !dbg !11
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !11
  call void @_B_printEq(i8 addrspace(1)* %48, i8 addrspace(1)* %49), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %50 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %51 = bitcast i8 addrspace(1)* %50 to [1 x i8 addrspace(1)*] addrspace(1)*
  %52 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %53 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 0
  store i8 addrspace(1)* %52, i8 addrspace(1)* addrspace(1)* %53
  %54 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %51 to [0 x i8 addrspace(1)*] addrspace(1)*
  %55 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %56 = bitcast i8 addrspace(1)* %55 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %57 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %56, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %57
  %58 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %56, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %58
  %59 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %56, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %59
  %60 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %56, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %54, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %60
  %61 = getelementptr i8, i8 addrspace(1)* %55, i64 1297036692682702852
  store i8 addrspace(1)* %61, i8 addrspace(1)** %5
  %62 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %63 = bitcast i8 addrspace(1)* %62 to [1 x i8 addrspace(1)*] addrspace(1)*
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %65 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 0
  store i8 addrspace(1)* %64, i8 addrspace(1)* addrspace(1)* %65
  %66 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %63 to [0 x i8 addrspace(1)*] addrspace(1)*
  %67 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %68 = bitcast i8 addrspace(1)* %67 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %69 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %69
  %70 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %70
  %71 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %71
  %72 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %68, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %66, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %72
  %73 = getelementptr i8, i8 addrspace(1)* %67, i64 1297036692682702852
  store i8 addrspace(1)* %73, i8 addrspace(1)** %6
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !12
  %75 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %74, i64 -5), !dbg !12
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %6, !dbg !12
  %77 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %76, i64 -5), !dbg !12
  call void @_B_printEq(i8 addrspace(1)* %75, i8 addrspace(1)* %77), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !12
  %78 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %79 = bitcast i8 addrspace(1)* %78 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %80 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %80
  %81 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %81
  %82 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %82
  %83 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %79, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %83
  %84 = getelementptr i8, i8 addrspace(1)* %78, i64 1297036692682702852
  store i8 addrspace(1)* %84, i8 addrspace(1)** %8
  %85 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %86 = bitcast i8 addrspace(1)* %85 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %87 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %86, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %87
  %88 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %86, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %88
  %89 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %86, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %89
  %90 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %86, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %90
  %91 = getelementptr i8, i8 addrspace(1)* %85, i64 1297036692682702852
  store i8 addrspace(1)* %91, i8 addrspace(1)** %9
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %8, !dbg !13
  %93 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %92, i64 -5), !dbg !13
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !13
  %95 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %94, i64 -5), !dbg !13
  call void @_B_printEq(i8 addrspace(1)* %93, i8 addrspace(1)* %95), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !13
  %96 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %97 = bitcast i8 addrspace(1)* %96 to [1 x i8 addrspace(1)*] addrspace(1)*
  %98 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %99 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %97, i64 0, i64 0
  store i8 addrspace(1)* %98, i8 addrspace(1)* addrspace(1)* %99
  %100 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %97 to [0 x i8 addrspace(1)*] addrspace(1)*
  %101 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %102 = bitcast i8 addrspace(1)* %101 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %103 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %103
  %104 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %104
  %105 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %105
  %106 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %102, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %100, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %106
  %107 = getelementptr i8, i8 addrspace(1)* %101, i64 1297036692682702852
  store i8 addrspace(1)* %107, i8 addrspace(1)** %11
  %108 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %109 = bitcast i8 addrspace(1)* %108 to [1 x i8 addrspace(1)*] addrspace(1)*
  %110 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %111 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %109, i64 0, i64 0
  store i8 addrspace(1)* %110, i8 addrspace(1)* addrspace(1)* %111
  %112 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %109 to [0 x i8 addrspace(1)*] addrspace(1)*
  %113 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %114 = bitcast i8 addrspace(1)* %113 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %115 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %114, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %115
  %116 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %114, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %116
  %117 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %114, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %117
  %118 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %114, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %112, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %118
  %119 = getelementptr i8, i8 addrspace(1)* %113, i64 1297036692682702852
  store i8 addrspace(1)* %119, i8 addrspace(1)** %12
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !14
  %121 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %120, i64 -5), !dbg !14
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %12, !dbg !14
  %123 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %122, i64 -5), !dbg !14
  call void @_B_printEq(i8 addrspace(1)* %121, i8 addrspace(1)* %123), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !14
  ret void
124:
  %125 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %125)
  unreachable
}
define internal void @_B_printEq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %26, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %13 = call i1 @_bal_exact_eq(i8 addrspace(1)* %11, i8 addrspace(1)* %12)
  store i1 %13, i1* %3
  %14 = load i1, i1* %3, !dbg !16
  %15 = zext i1 %14 to i64, !dbg !16
  %16 = or i64 %15, 72057594037927936, !dbg !16
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !16
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %20 = call i1 @_bal_exact_eq(i8 addrspace(1)* %18, i8 addrspace(1)* %19)
  %21 = xor i1 %20, 1
  store i1 %21, i1* %5
  %22 = load i1, i1* %5, !dbg !17
  %23 = zext i1 %22 to i64, !dbg !17
  %24 = or i64 %23, 72057594037927936, !dbg !17
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !17
  ret void
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-equal/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printEq", linkageName:"_B_printEq", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 4, scope: !5)
!13 = !DILocation(line: 17, column: 4, scope: !5)
!14 = !DILocation(line: 20, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 24, column: 4, scope: !7)
!17 = !DILocation(line: 25, column: 4, scope: !7)
