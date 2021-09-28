@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
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
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8
  %22 = load i8*, i8** @_bal_stack_guard
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %209, label %24
24:
  %25 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %26 = bitcast i8 addrspace(1)* %25 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %27 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %28
  %29 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %29
  %30 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %30
  %31 = getelementptr i8, i8 addrspace(1)* %25, i64 1297036692682702852
  store i8 addrspace(1)* %31, i8 addrspace(1)** %1
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 -5), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %34 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %35 = bitcast i8 addrspace(1)* %34 to [1 x i8 addrspace(1)*] addrspace(1)*
  %36 = zext i1 1 to i64
  %37 = or i64 %36, 72057594037927936
  %38 = getelementptr i8, i8 addrspace(1)* null, i64 %37
  %39 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %35, i64 0, i64 0
  store i8 addrspace(1)* %38, i8 addrspace(1)* addrspace(1)* %39
  %40 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %35 to [0 x i8 addrspace(1)*] addrspace(1)*
  %41 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %42 = bitcast i8 addrspace(1)* %41 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %43 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %43
  %44 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %44
  %45 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %45
  %46 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %42, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %40, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %46
  %47 = getelementptr i8, i8 addrspace(1)* %41, i64 1297036692682702852
  store i8 addrspace(1)* %47, i8 addrspace(1)** %3
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  %49 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %48, i64 -5), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %50 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %51 = bitcast i8 addrspace(1)* %50 to [1 x i8 addrspace(1)*] addrspace(1)*
  %52 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %52
  %53 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %51 to [0 x i8 addrspace(1)*] addrspace(1)*
  %54 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %55 = bitcast i8 addrspace(1)* %54 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %56 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %56
  %57 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %57
  %58 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %58
  %59 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %53, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %59
  %60 = getelementptr i8, i8 addrspace(1)* %54, i64 1297036692682702852
  store i8 addrspace(1)* %60, i8 addrspace(1)** %5
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  %62 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %61, i64 -5), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %62), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %63 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %64 = bitcast i8 addrspace(1)* %63 to [1 x i8 addrspace(1)*] addrspace(1)*
  %65 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -17)
  %66 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %64, i64 0, i64 0
  store i8 addrspace(1)* %65, i8 addrspace(1)* addrspace(1)* %66
  %67 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %64 to [0 x i8 addrspace(1)*] addrspace(1)*
  %68 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %69 = bitcast i8 addrspace(1)* %68 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %70 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %70
  %71 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %71
  %72 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %72
  %73 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %69, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %67, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %73
  %74 = getelementptr i8, i8 addrspace(1)* %68, i64 1297036692682702852
  store i8 addrspace(1)* %74, i8 addrspace(1)** %7
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  %76 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %75, i64 -5), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %76), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %77 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %78 = bitcast i8 addrspace(1)* %77 to [3 x i8 addrspace(1)*] addrspace(1)*
  %79 = zext i1 0 to i64
  %80 = or i64 %79, 72057594037927936
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80
  %82 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %78, i64 0, i64 0
  store i8 addrspace(1)* %81, i8 addrspace(1)* addrspace(1)* %82
  %83 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %78, i64 0, i64 1
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %83
  %84 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 43)
  %85 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %78, i64 0, i64 2
  store i8 addrspace(1)* %84, i8 addrspace(1)* addrspace(1)* %85
  %86 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %78 to [0 x i8 addrspace(1)*] addrspace(1)*
  %87 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %88 = bitcast i8 addrspace(1)* %87 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %89 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %88, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %89
  %90 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %88, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %90
  %91 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %88, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %91
  %92 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %88, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %86, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %92
  %93 = getelementptr i8, i8 addrspace(1)* %87, i64 1297036692682702852
  store i8 addrspace(1)* %93, i8 addrspace(1)** %9
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  %95 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %94, i64 -5), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %95), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %96 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %97 = bitcast i8 addrspace(1)* %96 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %98 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %97, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %98
  %99 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %97, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %99
  %100 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %97, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %100
  %101 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %97, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %101
  %102 = getelementptr i8, i8 addrspace(1)* %96, i64 1297036692682702852
  store i8 addrspace(1)* %102, i8 addrspace(1)** %11
  %103 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %104 = bitcast i8 addrspace(1)* %103 to [1 x i8 addrspace(1)*] addrspace(1)*
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %106 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %105, i64 -5)
  %107 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %104, i64 0, i64 0
  store i8 addrspace(1)* %106, i8 addrspace(1)* addrspace(1)* %107
  %108 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %104 to [0 x i8 addrspace(1)*] addrspace(1)*
  %109 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %110 = bitcast i8 addrspace(1)* %109 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %111 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %110, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %111
  %112 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %110, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %112
  %113 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %110, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %113
  %114 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %110, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %108, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %114
  %115 = getelementptr i8, i8 addrspace(1)* %109, i64 1297036692682702852
  store i8 addrspace(1)* %115, i8 addrspace(1)** %12
  %116 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %117 = bitcast i8 addrspace(1)* %116 to [1 x i8 addrspace(1)*] addrspace(1)*
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %119 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %118, i64 -5)
  %120 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %117, i64 0, i64 0
  store i8 addrspace(1)* %119, i8 addrspace(1)* addrspace(1)* %120
  %121 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %117 to [0 x i8 addrspace(1)*] addrspace(1)*
  %122 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %123 = bitcast i8 addrspace(1)* %122 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %124 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %123, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %124
  %125 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %123, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %125
  %126 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %123, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %126
  %127 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %123, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %121, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %127
  %128 = getelementptr i8, i8 addrspace(1)* %122, i64 1297036692682702852
  store i8 addrspace(1)* %128, i8 addrspace(1)** %13
  %129 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %130 = bitcast i8 addrspace(1)* %129 to [1 x i8 addrspace(1)*] addrspace(1)*
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %132 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %131, i64 -5)
  %133 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %130, i64 0, i64 0
  store i8 addrspace(1)* %132, i8 addrspace(1)* addrspace(1)* %133
  %134 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %130 to [0 x i8 addrspace(1)*] addrspace(1)*
  %135 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %136 = bitcast i8 addrspace(1)* %135 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %137 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %136, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %137
  %138 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %136, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %138
  %139 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %136, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %139
  %140 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %136, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %134, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %140
  %141 = getelementptr i8, i8 addrspace(1)* %135, i64 1297036692682702852
  store i8 addrspace(1)* %141, i8 addrspace(1)** %14
  %142 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %143 = bitcast i8 addrspace(1)* %142 to [1 x i8 addrspace(1)*] addrspace(1)*
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %145 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %144, i64 -5)
  %146 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %143, i64 0, i64 0
  store i8 addrspace(1)* %145, i8 addrspace(1)* addrspace(1)* %146
  %147 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %143 to [0 x i8 addrspace(1)*] addrspace(1)*
  %148 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %149 = bitcast i8 addrspace(1)* %148 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %150 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %150
  %151 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %151
  %152 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %152
  %153 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %149, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %147, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %153
  %154 = getelementptr i8, i8 addrspace(1)* %148, i64 1297036692682702852
  store i8 addrspace(1)* %154, i8 addrspace(1)** %15
  %155 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %156 = bitcast i8 addrspace(1)* %155 to [1 x i8 addrspace(1)*] addrspace(1)*
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %158 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %157, i64 -5)
  %159 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %156, i64 0, i64 0
  store i8 addrspace(1)* %158, i8 addrspace(1)* addrspace(1)* %159
  %160 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %156 to [0 x i8 addrspace(1)*] addrspace(1)*
  %161 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %162 = bitcast i8 addrspace(1)* %161 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %163 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %162, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %163
  %164 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %162, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %164
  %165 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %162, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %165
  %166 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %162, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %160, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %166
  %167 = getelementptr i8, i8 addrspace(1)* %161, i64 1297036692682702852
  store i8 addrspace(1)* %167, i8 addrspace(1)** %16
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !13
  %169 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %168, i64 -5), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %169), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !13
  %170 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %171 = bitcast i8 addrspace(1)* %170 to [3 x i8 addrspace(1)*] addrspace(1)*
  %172 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %173 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %171, i64 0, i64 0
  store i8 addrspace(1)* %172, i8 addrspace(1)* addrspace(1)* %173
  %174 = zext i1 1 to i64
  %175 = or i64 %174, 72057594037927936
  %176 = getelementptr i8, i8 addrspace(1)* null, i64 %175
  %177 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %171, i64 0, i64 1
  store i8 addrspace(1)* %176, i8 addrspace(1)* addrspace(1)* %177
  %178 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  %179 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %171, i64 0, i64 2
  store i8 addrspace(1)* %178, i8 addrspace(1)* addrspace(1)* %179
  %180 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %171 to [0 x i8 addrspace(1)*] addrspace(1)*
  %181 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %182 = bitcast i8 addrspace(1)* %181 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %183 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %182, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %183
  %184 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %182, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %184
  %185 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %182, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %185
  %186 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %182, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %180, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %186
  %187 = getelementptr i8, i8 addrspace(1)* %181, i64 1297036692682702852
  store i8 addrspace(1)* %187, i8 addrspace(1)** %18
  %188 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %189 = bitcast i8 addrspace(1)* %188 to [3 x i8 addrspace(1)*] addrspace(1)*
  %190 = zext i1 0 to i64
  %191 = or i64 %190, 72057594037927936
  %192 = getelementptr i8, i8 addrspace(1)* null, i64 %191
  %193 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %189, i64 0, i64 0
  store i8 addrspace(1)* %192, i8 addrspace(1)* addrspace(1)* %193
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %195 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %194, i64 -5)
  %196 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %189, i64 0, i64 1
  store i8 addrspace(1)* %195, i8 addrspace(1)* addrspace(1)* %196
  %197 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %198 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %189, i64 0, i64 2
  store i8 addrspace(1)* %197, i8 addrspace(1)* addrspace(1)* %198
  %199 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %189 to [0 x i8 addrspace(1)*] addrspace(1)*
  %200 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %201 = bitcast i8 addrspace(1)* %200 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %202 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %201, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %202
  %203 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %201, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %203
  %204 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %201, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %204
  %205 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %201, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %199, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %205
  %206 = getelementptr i8, i8 addrspace(1)* %200, i64 1297036692682702852
  store i8 addrspace(1)* %206, i8 addrspace(1)** %19
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !14
  %208 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %207, i64 -5), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %208), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !14
  ret void
209:
  %210 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %210)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 4, scope: !5)
!13 = !DILocation(line: 10, column: 4, scope: !5)
!14 = !DILocation(line: 11, column: 4, scope: !5)
