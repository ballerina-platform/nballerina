@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca double
  %3 = alloca double
  %4 = alloca double
  %5 = alloca double
  %6 = alloca double
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %33, label %13
13:
  %14 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !9
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 3
  %16 = load ptr addrspace(1), ptr addrspace(1) %15, align 8
  %17 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %18 = getelementptr inbounds [0 x double], ptr addrspace(1) %17, i64 0, i64 0
  store double 0.5, ptr addrspace(1) %18
  %19 = getelementptr inbounds [0 x double], ptr addrspace(1) %17, i64 0, i64 1
  store double 1.5, ptr addrspace(1) %19
  %20 = getelementptr inbounds [0 x double], ptr addrspace(1) %17, i64 0, i64 2
  store double 2.5, ptr addrspace(1) %20
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 1
  store i64 3, ptr addrspace(1) %21
  %22 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %23 = getelementptr i8, ptr addrspace(1) %22, i64 864691128455135236
  store ptr addrspace(1) %23, ptr %1
  %24 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %24, ptr %v
  %25 = load ptr addrspace(1), ptr %v
  %26 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %25, i64 72057594037927928)
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  %29 = load i64, ptr addrspace(1) %28, align 8
  %30 = icmp ult i64 0, %29
  br i1 %30, label %35, label %38
31:
  %32 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %32), !dbg !13
  unreachable
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !8
  unreachable
35:
  %36 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %25, i64 4)
  %37 = icmp ne ptr addrspace(1) %36, null
  br i1 %37, label %40, label %46
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %39, ptr %9
  br label %31
40:
  %41 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = getelementptr inbounds [0 x double], ptr addrspace(1) %43, i64 0, i64 0
  %45 = load double, ptr addrspace(1) %44, align 8
  store double %45, ptr %2
  br label %52
46:
  %47 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 0
  %48 = load ptr, ptr addrspace(1) %47, align 8
  %49 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %48, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8
  %51 = call double %50(ptr addrspace(1) %25, i64 0)
  store double %51, ptr %2
  br label %52
52:
  %53 = load ptr addrspace(1), ptr %v
  %54 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %53, i64 72057594037927928)
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  %57 = load i64, ptr addrspace(1) %56, align 8
  %58 = icmp ult i64 1, %57
  br i1 %58, label %59, label %62
59:
  %60 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %53, i64 4)
  %61 = icmp ne ptr addrspace(1) %60, null
  br i1 %61, label %64, label %70
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %63, ptr %9
  br label %31
64:
  %65 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = getelementptr inbounds [0 x double], ptr addrspace(1) %67, i64 0, i64 1
  %69 = load double, ptr addrspace(1) %68, align 8
  store double %69, ptr %3
  br label %76
70:
  %71 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 0
  %72 = load ptr, ptr addrspace(1) %71, align 8
  %73 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %72, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8
  %75 = call double %74(ptr addrspace(1) %53, i64 1)
  store double %75, ptr %3
  br label %76
76:
  %77 = load double, ptr %2
  %78 = load double, ptr %3
  %79 = fadd double %77, %78
  store double %79, ptr %4
  %80 = load ptr addrspace(1), ptr %v
  %81 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %80, i64 72057594037927928)
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 1
  %84 = load i64, ptr addrspace(1) %83, align 8
  %85 = icmp ult i64 2, %84
  br i1 %85, label %86, label %89
86:
  %87 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %80, i64 4)
  %88 = icmp ne ptr addrspace(1) %87, null
  br i1 %88, label %91, label %97
89:
  %90 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %90, ptr %9
  br label %31
91:
  %92 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 3
  %93 = load ptr addrspace(1), ptr addrspace(1) %92, align 8
  %94 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %95 = getelementptr inbounds [0 x double], ptr addrspace(1) %94, i64 0, i64 2
  %96 = load double, ptr addrspace(1) %95, align 8
  store double %96, ptr %5
  br label %103
97:
  %98 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 0
  %99 = load ptr, ptr addrspace(1) %98, align 8
  %100 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %99, i64 0, i32 9
  %101 = load ptr, ptr %100, align 8
  %102 = call double %101(ptr addrspace(1) %80, i64 2)
  store double %102, ptr %5
  br label %103
103:
  %104 = load double, ptr %4
  %105 = load double, ptr %5
  %106 = fadd double %104, %105
  store double %106, ptr %6
  %107 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %108 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 3
  %109 = load ptr addrspace(1), ptr addrspace(1) %108, align 8
  %110 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %111 = load double, ptr %6
  %112 = call ptr addrspace(1) @_bal_float_to_tagged(double %111), !dbg !11
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %110, i64 0, i64 0
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %107, i64 0, i32 1
  store i64 1, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %7
  %117 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %117), !dbg !12
  store ptr addrspace(1) null, ptr %8
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/float1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 16, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 0, scope: !5)
