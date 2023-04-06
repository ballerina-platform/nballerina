@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Be04root3 = external constant i32
@_Bi04root4 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1), ptr) readonly
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca ptr addrspace(1)
  %n = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %ix = alloca ptr addrspace(1)
  %n2 = alloca i64
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %56, label %16
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr inbounds [0 x i64], ptr addrspace(1) %20, i64 0, i64 0
  store i64 255, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %1
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 0), !dbg !10
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %2
  %28 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !11
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %3
  %31 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 3), !dbg !12
  %32 = load ptr addrspace(1), ptr %1
  call void @_bal_mapping_init_member(ptr addrspace(1) %31, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %32), !dbg !13
  %33 = load ptr addrspace(1), ptr %2
  call void @_bal_mapping_init_member(ptr addrspace(1) %31, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %33), !dbg !14
  %34 = load ptr addrspace(1), ptr %3
  call void @_bal_mapping_init_member(ptr addrspace(1) %31, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) %34), !dbg !15
  store ptr addrspace(1) %31, ptr %4
  %35 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %35, ptr %r
  %36 = load ptr addrspace(1), ptr %r
  %37 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %36, i64 0), !dbg !16
  %38 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %36, ptr addrspace(1) %37), !dbg !17
  store ptr addrspace(1) %38, ptr %5
  %39 = load ptr addrspace(1), ptr %5
  %40 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %39), !dbg !18
  store ptr addrspace(1) %40, ptr %x
  %41 = load ptr addrspace(1), ptr %x
  %42 = call i1 @_bal_type_contains(ptr @_Bt04root0, ptr addrspace(1) %41), !dbg !19
  br i1 %42, label %43, label %52
43:
  %44 = load ptr addrspace(1), ptr %x
  %45 = call ptr addrspace(1) @_bal_structure_exactify(ptr addrspace(1) %44, ptr @_Be04root3), !dbg !20
  store ptr addrspace(1) %45, ptr %x.1
  %46 = load ptr addrspace(1), ptr %x.1
  %47 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %46, i64 72057594037927928)
  %48 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %49 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  %50 = load i64, ptr addrspace(1) %49, align 8
  %51 = icmp ult i64 0, %50
  br i1 %51, label %58, label %61
52:
  %53 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %53, ptr %x.2
  ret void
54:
  %55 = load ptr addrspace(1), ptr %12
  call void @_bal_panic(ptr addrspace(1) %55), !dbg !27
  unreachable
56:
  %57 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %57), !dbg !8
  unreachable
58:
  %59 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %46, i64 4)
  %60 = icmp ne ptr addrspace(1) %59, null
  br i1 %60, label %63, label %69
61:
  %62 = call ptr addrspace(1) @_bal_panic_construct(i64 4101), !dbg !7
  store ptr addrspace(1) %62, ptr %12
  br label %54
63:
  %64 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = getelementptr inbounds [0 x i64], ptr addrspace(1) %66, i64 0, i64 0
  %68 = load i64, ptr addrspace(1) %67, align 8
  store i64 %68, ptr %6
  br label %75
69:
  %70 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 0
  %71 = load ptr, ptr addrspace(1) %70, align 8
  %72 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8
  %74 = call i64 %73(ptr addrspace(1) %46, i64 0)
  store i64 %74, ptr %6
  br label %75
75:
  %76 = load i64, ptr %6
  store i64 %76, ptr %n
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !21
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load i64, ptr %n
  %82 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %81), !dbg !22
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %7
  %87 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %87), !dbg !23
  store ptr addrspace(1) null, ptr %8
  %88 = load ptr addrspace(1), ptr %x.1
  store ptr addrspace(1) %88, ptr %ix
  %89 = load ptr addrspace(1), ptr %ix
  %90 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %89, i64 72057594037927928)
  %91 = bitcast ptr addrspace(1) %90 to ptr addrspace(1)
  %92 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 1
  %93 = load i64, ptr addrspace(1) %92, align 8
  %94 = icmp ult i64 0, %93
  br i1 %94, label %95, label %98
95:
  %96 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %89, i64 4)
  %97 = icmp ne ptr addrspace(1) %96, null
  br i1 %97, label %100, label %106
98:
  %99 = call ptr addrspace(1) @_bal_panic_construct(i64 4869), !dbg !7
  store ptr addrspace(1) %99, ptr %12
  br label %54
100:
  %101 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 3
  %102 = load ptr addrspace(1), ptr addrspace(1) %101, align 8
  %103 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %104 = getelementptr inbounds [0 x i64], ptr addrspace(1) %103, i64 0, i64 0
  %105 = load i64, ptr addrspace(1) %104, align 8
  store i64 %105, ptr %9
  br label %112
106:
  %107 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 0
  %108 = load ptr, ptr addrspace(1) %107, align 8
  %109 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %108, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8
  %111 = call i64 %110(ptr addrspace(1) %89, i64 0)
  store i64 %111, ptr %9
  br label %112
112:
  %113 = load i64, ptr %9
  store i64 %113, ptr %n2
  %114 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root4, i64 1), !dbg !24
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 3
  %116 = load ptr addrspace(1), ptr addrspace(1) %115, align 8
  %117 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %118 = load i64, ptr %n2
  %119 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %118), !dbg !25
  %120 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %117, i64 0, i64 0
  store ptr addrspace(1) %119, ptr addrspace(1) %120
  %121 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 1
  store i64 1, ptr addrspace(1) %121
  %122 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %123 = getelementptr i8, ptr addrspace(1) %122, i64 864691128455135236
  store ptr addrspace(1) %123, ptr %10
  %124 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %124), !dbg !26
  store ptr addrspace(1) null, ptr %11
  br label %52
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/proj2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 16, scope: !5)
!9 = !DILocation(line: 13, column: 15, scope: !5)
!10 = !DILocation(line: 13, column: 25, scope: !5)
!11 = !DILocation(line: 13, column: 32, scope: !5)
!12 = !DILocation(line: 13, column: 10, scope: !5)
!13 = !DILocation(line: 13, column: 10, scope: !5)
!14 = !DILocation(line: 13, column: 10, scope: !5)
!15 = !DILocation(line: 13, column: 10, scope: !5)
!16 = !DILocation(line: 14, column: 14, scope: !5)
!17 = !DILocation(line: 14, column: 14, scope: !5)
!18 = !DILocation(line: 14, column: 11, scope: !5)
!19 = !DILocation(line: 15, column: 9, scope: !5)
!20 = !DILocation(line: 15, column: 9, scope: !5)
!21 = !DILocation(line: 17, column: 19, scope: !5)
!22 = !DILocation(line: 17, column: 19, scope: !5)
!23 = !DILocation(line: 17, column: 8, scope: !5)
!24 = !DILocation(line: 20, column: 19, scope: !5)
!25 = !DILocation(line: 20, column: 19, scope: !5)
!26 = !DILocation(line: 20, column: 8, scope: !5)
!27 = !DILocation(line: 22, column: 0, scope: !5)
