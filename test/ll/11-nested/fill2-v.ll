@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %v0 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %iv = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %iv.1 = alloca ptr addrspace(1)
  %iv.2 = alloca ptr addrspace(1)
  %n = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %41, label %13
13:
  %14 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %17, ptr %v
  %18 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 0), !dbg !10
  store ptr addrspace(1) %18, ptr %2
  %19 = load ptr addrspace(1), ptr %v
  %20 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %19, i64 72057594037927928), !dbg !11
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = load ptr addrspace(1), ptr %2
  %23 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 0
  %24 = load ptr, ptr addrspace(1) %23, align 8
  %25 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = call i64 %26(ptr addrspace(1) %19, i64 1, ptr addrspace(1) %22)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %43, label %50
29:
  %30 = load ptr addrspace(1), ptr %iv
  store ptr addrspace(1) %30, ptr %iv.1
  %31 = load ptr addrspace(1), ptr %iv.1
  %32 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %31, i64 72057594037927928)
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  %35 = load i64, ptr addrspace(1) %34, align 8
  %36 = icmp ult i64 1, %35
  br i1 %36, label %89, label %92
37:
  %38 = load ptr addrspace(1), ptr %iv
  store ptr addrspace(1) %38, ptr %iv.2
  ret void
39:
  %40 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !20
  unreachable
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %42), !dbg !8
  unreachable
43:
  %44 = load ptr addrspace(1), ptr %v
  %45 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %44, i64 72057594037927928)
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  %48 = load i64, ptr addrspace(1) %47, align 8
  %49 = icmp ult i64 0, %48
  br i1 %49, label %53, label %74
50:
  %51 = or i64 %27, 1280
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 %51), !dbg !7
  store ptr addrspace(1) %52, ptr %9
  br label %39
53:
  %54 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 0
  %55 = load ptr, ptr addrspace(1) %54, align 8
  %56 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = call ptr addrspace(1) %57(ptr addrspace(1) %44, i64 0)
  %59 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %44, ptr addrspace(1) %58), !dbg !12
  store ptr addrspace(1) %59, ptr %3
  %60 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %60, ptr %v0
  %61 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 2), !dbg !13
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = getelementptr inbounds [0 x i64], ptr addrspace(1) %64, i64 0, i64 0
  store i64 17, ptr addrspace(1) %65
  %66 = getelementptr inbounds [0 x i64], ptr addrspace(1) %64, i64 0, i64 1
  store i64 73, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  store i64 2, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %4
  %70 = load ptr addrspace(1), ptr %v0
  %71 = load ptr addrspace(1), ptr %4
  %72 = call i64 @_bal_mapping_set(ptr addrspace(1) %70, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %71), !dbg !14
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %76, label %86
74:
  %75 = call ptr addrspace(1) @_bal_panic_construct(i64 1541), !dbg !7
  store ptr addrspace(1) %75, ptr %9
  br label %39
76:
  %77 = load ptr addrspace(1), ptr %v0
  %78 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %77, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !15
  %79 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %77, ptr addrspace(1) %78), !dbg !16
  store ptr addrspace(1) %79, ptr %5
  %80 = load ptr addrspace(1), ptr %5
  store ptr addrspace(1) %80, ptr %iv
  %81 = load ptr addrspace(1), ptr %iv
  %82 = addrspacecast ptr addrspace(1) %81 to ptr
  %83 = ptrtoint ptr %82 to i64
  %84 = and i64 %83, 2233785415175766016
  %85 = icmp eq i64 %84, 864691128455135232
  br i1 %85, label %29, label %37
86:
  %87 = or i64 %72, 1792
  %88 = call ptr addrspace(1) @_bal_panic_construct(i64 %87), !dbg !7
  store ptr addrspace(1) %88, ptr %9
  br label %39
89:
  %90 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %31, i64 4)
  %91 = icmp ne ptr addrspace(1) %90, null
  br i1 %91, label %94, label %100
92:
  %93 = call ptr addrspace(1) @_bal_panic_construct(i64 2565), !dbg !7
  store ptr addrspace(1) %93, ptr %9
  br label %39
94:
  %95 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = getelementptr inbounds [0 x i64], ptr addrspace(1) %97, i64 0, i64 1
  %99 = load i64, ptr addrspace(1) %98, align 8
  store i64 %99, ptr %6
  br label %106
100:
  %101 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 0
  %102 = load ptr, ptr addrspace(1) %101, align 8
  %103 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %102, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8
  %105 = call i64 %104(ptr addrspace(1) %31, i64 1)
  store i64 %105, ptr %6
  br label %106
106:
  %107 = load i64, ptr %6
  store i64 %107, ptr %n
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 1), !dbg !17
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load i64, ptr %n
  %113 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %112), !dbg !18
  %114 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %113, ptr addrspace(1) %114
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %115
  %116 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %117 = getelementptr i8, ptr addrspace(1) %116, i64 864691128455135236
  store ptr addrspace(1) %117, ptr %7
  %118 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %118), !dbg !19
  store ptr addrspace(1) null, ptr %8
  br label %37
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/fill2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 21, scope: !5)
!10 = !DILocation(line: 5, column: 11, scope: !5)
!11 = !DILocation(line: 5, column: 5, scope: !5)
!12 = !DILocation(line: 6, column: 21, scope: !5)
!13 = !DILocation(line: 7, column: 14, scope: !5)
!14 = !DILocation(line: 7, column: 6, scope: !5)
!15 = !DILocation(line: 8, column: 18, scope: !5)
!16 = !DILocation(line: 8, column: 18, scope: !5)
!17 = !DILocation(line: 11, column: 19, scope: !5)
!18 = !DILocation(line: 11, column: 19, scope: !5)
!19 = !DILocation(line: 11, column: 8, scope: !5)
!20 = !DILocation(line: 13, column: 0, scope: !5)
