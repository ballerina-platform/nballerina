@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %i = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %45, label %15
15:
  %16 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 3
  %18 = load ptr addrspace(1), ptr addrspace(1) %17, align 8
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = and i64 72057594037927935, 17
  %21 = or i64 2449958197289549824, %20
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 0
  store ptr addrspace(1) %22, ptr addrspace(1) %23
  %24 = and i64 72057594037927935, 42
  %25 = or i64 2449958197289549824, %24
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 1
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = and i64 72057594037927935, -11
  %29 = or i64 2449958197289549824, %28
  %30 = getelementptr i8, ptr addrspace(1) null, i64 %29
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 2
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 1
  store i64 3, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %1
  %35 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %35, ptr %v
  store i64 0, ptr %i
  %36 = load ptr addrspace(1), ptr %v
  %37 = load i64, ptr %i
  %38 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %36, i64 72057594037927928)
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  %41 = load i64, ptr addrspace(1) %40, align 8
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %47, label %71
43:
  %44 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !19
  unreachable
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %46), !dbg !8
  unreachable
47:
  %48 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 0
  %49 = load ptr, ptr addrspace(1) %48, align 8
  %50 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = call ptr addrspace(1) %51(ptr addrspace(1) %36, i64 %37)
  %53 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %36, ptr addrspace(1) %52), !dbg !10
  store ptr addrspace(1) %53, ptr %2
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = load ptr addrspace(1), ptr %2
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) %58, ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %3
  %63 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %63), !dbg !12
  store ptr addrspace(1) null, ptr %4
  store i64 1, ptr %i
  %64 = load ptr addrspace(1), ptr %v
  %65 = load i64, ptr %i
  %66 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %64, i64 72057594037927928)
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  %69 = load i64, ptr addrspace(1) %68, align 8
  %70 = icmp ult i64 %65, %69
  br i1 %70, label %73, label %97
71:
  %72 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %72, ptr %11
  br label %43
73:
  %74 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 0
  %75 = load ptr, ptr addrspace(1) %74, align 8
  %76 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = call ptr addrspace(1) %77(ptr addrspace(1) %64, i64 %65)
  %79 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %64, ptr addrspace(1) %78), !dbg !13
  store ptr addrspace(1) %79, ptr %5
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load ptr addrspace(1), ptr %5
  %85 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %84, ptr addrspace(1) %85
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %86
  %87 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %88 = getelementptr i8, ptr addrspace(1) %87, i64 864691128455135236
  store ptr addrspace(1) %88, ptr %6
  %89 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %89), !dbg !15
  store ptr addrspace(1) null, ptr %7
  store i64 2, ptr %i
  %90 = load ptr addrspace(1), ptr %v
  %91 = load i64, ptr %i
  %92 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %90, i64 72057594037927928)
  %93 = bitcast ptr addrspace(1) %92 to ptr addrspace(1)
  %94 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  %95 = load i64, ptr addrspace(1) %94, align 8
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %99, label %116
97:
  %98 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %98, ptr %11
  br label %43
99:
  %100 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 0
  %101 = load ptr, ptr addrspace(1) %100, align 8
  %102 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8
  %104 = call ptr addrspace(1) %103(ptr addrspace(1) %90, i64 %91)
  %105 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %90, ptr addrspace(1) %104), !dbg !16
  store ptr addrspace(1) %105, ptr %8
  %106 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 3
  %108 = load ptr addrspace(1), ptr addrspace(1) %107, align 8
  %109 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %110 = load ptr addrspace(1), ptr %8
  %111 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %109, i64 0, i64 0
  store ptr addrspace(1) %110, ptr addrspace(1) %111
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %106, i64 0, i32 1
  store i64 1, ptr addrspace(1) %112
  %113 = bitcast ptr addrspace(1) %106 to ptr addrspace(1)
  %114 = getelementptr i8, ptr addrspace(1) %113, i64 864691128455135236
  store ptr addrspace(1) %114, ptr %9
  %115 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %115), !dbg !18
  store ptr addrspace(1) null, ptr %10
  ret void
116:
  %117 = call ptr addrspace(1) @_bal_panic_construct(i64 2565), !dbg !7
  store ptr addrspace(1) %117, ptr %11
  br label %43
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 6, column: 16, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 16, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 10, column: 16, scope: !5)
!17 = !DILocation(line: 10, column: 15, scope: !5)
!18 = !DILocation(line: 10, column: 4, scope: !5)
!19 = !DILocation(line: 11, column: 0, scope: !5)
