@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"unexpected\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i8
  %19 = load ptr, ptr @_bal_stack_guard
  %20 = icmp ult ptr %18, %19
  br i1 %20, label %120, label %21
21:
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !9
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = and i64 72057594037927935, 1
  %27 = or i64 2449958197289549824, %26
  %28 = getelementptr i8, ptr addrspace(1) null, i64 %27
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 0
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = and i64 72057594037927935, 2
  %31 = or i64 2449958197289549824, %30
  %32 = getelementptr i8, ptr addrspace(1) null, i64 %31
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 1
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 2, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %1
  br label %clause.0
clause.0:
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %40, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2695244301057814391), ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %2
  %45 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %45), !dbg !11
  store ptr addrspace(1) null, ptr %3
  br label %46
46:
  %47 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 2), !dbg !12
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %49 = load ptr addrspace(1), ptr addrspace(1) %48, align 8
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = and i64 72057594037927935, 1
  %52 = or i64 2449958197289549824, %51
  %53 = getelementptr i8, ptr addrspace(1) null, i64 %52
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = and i64 72057594037927935, 2
  %56 = or i64 2449958197289549824, %55
  %57 = getelementptr i8, ptr addrspace(1) null, i64 %56
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 1
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  store i64 2, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %4
  %62 = load ptr addrspace(1), ptr %4
  %63 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %62, i64 72057594037927928)
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  %66 = load i64, ptr addrspace(1) %65, align 8
  %67 = icmp ult i64 1, %66
  br i1 %67, label %122, label %131
clause.0.1:
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2695244301057814391), ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %7
  %76 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !14
  store ptr addrspace(1) null, ptr %8
  br label %77
pattern.0:
  br label %77
77:
  %78 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !15
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 3
  %80 = load ptr addrspace(1), ptr addrspace(1) %79, align 8
  %81 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %82 = and i64 72057594037927935, 1
  %83 = or i64 2449958197289549824, %82
  %84 = getelementptr i8, ptr addrspace(1) null, i64 %83
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  store i64 2, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %9
  %90 = load ptr addrspace(1), ptr %9
  %91 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %90, i64 72057594037927928)
  %92 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %93 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %92, i64 0, i32 1
  %94 = load i64, ptr addrspace(1) %93, align 8
  %95 = icmp ult i64 1, %94
  br i1 %95, label %133, label %142
clause.0.2:
  %96 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %97 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 3
  %98 = load ptr addrspace(1), ptr addrspace(1) %97, align 8
  %99 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %99, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str3 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %100
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %96, i64 0, i32 1
  store i64 1, ptr addrspace(1) %101
  %102 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %103 = getelementptr i8, ptr addrspace(1) %102, i64 864691128455135236
  store ptr addrspace(1) %103, ptr %13
  %104 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %104), !dbg !19
  store ptr addrspace(1) null, ptr %14
  br label %117
clause.1:
  %105 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 3
  %107 = load ptr addrspace(1), ptr addrspace(1) %106, align 8
  %108 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2695244301057814391), ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %15
  %113 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !17
  store ptr addrspace(1) null, ptr %16
  br label %117
pattern.0.1:
  %114 = load ptr addrspace(1), ptr %10
  %115 = icmp eq ptr addrspace(1) %114, getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409)
  store i1 %115, ptr %12
  %116 = load i1, ptr %12
  br i1 %116, label %clause.1, label %pattern.1
pattern.1:
  br label %117
117:
  ret void
118:
  %119 = load ptr addrspace(1), ptr %17
  call void @_bal_panic(ptr addrspace(1) %119), !dbg !20
  unreachable
120:
  %121 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %121), !dbg !8
  unreachable
122:
  %123 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 0
  %124 = load ptr, ptr addrspace(1) %123, align 8
  %125 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %124, i64 0, i32 6
  %126 = load ptr, ptr %125, align 8
  %127 = call i64 %126(ptr addrspace(1) %62, i64 1)
  store i64 %127, ptr %5
  %128 = load i64, ptr %5
  %129 = icmp eq i64 %128, 2
  store i1 %129, ptr %6
  %130 = load i1, ptr %6
  br i1 %130, label %clause.0.1, label %pattern.0
131:
  %132 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %132, ptr %17
  br label %118
133:
  %134 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %92, i64 0, i32 0
  %135 = load ptr, ptr addrspace(1) %134, align 8
  %136 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8
  %138 = call ptr addrspace(1) %137(ptr addrspace(1) %90, i64 1)
  store ptr addrspace(1) %138, ptr %10
  %139 = load ptr addrspace(1), ptr %10
  %140 = icmp eq ptr addrspace(1) %139, getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410)
  store i1 %140, ptr %11
  %141 = load i1, ptr %11
  br i1 %141, label %clause.0.2, label %pattern.0.1
142:
  %143 = call ptr addrspace(1) @_bal_panic_construct(i64 2309), !dbg !7
  store ptr addrspace(1) %143, ptr %17
  br label %118
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-list/11-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 10, scope: !5)
!10 = !DILocation(line: 4, column: 26, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 10, scope: !5)
!13 = !DILocation(line: 7, column: 26, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 9, column: 10, scope: !5)
!16 = !DILocation(line: 11, column: 28, scope: !5)
!17 = !DILocation(line: 11, column: 17, scope: !5)
!18 = !DILocation(line: 10, column: 28, scope: !5)
!19 = !DILocation(line: 10, column: 17, scope: !5)
!20 = !DILocation(line: 13, column: 0, scope: !5)
