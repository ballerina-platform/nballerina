@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2454532165661097984], align 8
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452209997103235072], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 52, i64 2452209997103235072], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452139628359057408], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452350734591590400], align 8
@_Bi04root3 = external constant {i32}
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 35, i64 2452209997103235072], align 8
@_Bi04root4 = external constant {i32}
@.dec6 = internal unnamed_addr constant [2 x i64] [i64 305, i64 2452139628359057408], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
define void @_B04rootmain() !dbg !5 {
  %r1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %r2 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %r3 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i8
  %18 = load ptr, ptr @_bal_stack_guard
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %62, label %20
20:
  %21 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !9
  %22 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %23 = getelementptr i8, ptr addrspace(1) %22, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %21, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261412), ptr addrspace(1) %23), !dbg !10
  store ptr addrspace(1) %21, ptr %1
  %24 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %24, ptr %r1
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = load ptr addrspace(1), ptr %r1
  %30 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %29), !dbg !12
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %2
  %35 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %36 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 3), !dbg !14
  %37 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %36, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261412), ptr addrspace(1) %38), !dbg !15
  %39 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %36, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208676), ptr addrspace(1) %40), !dbg !16
  %41 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %36, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208932), ptr addrspace(1) %42), !dbg !17
  store ptr addrspace(1) %36, ptr %4
  %43 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %43, ptr %r2
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 3
  %46 = load ptr addrspace(1), ptr addrspace(1) %45, align 8
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = load ptr addrspace(1), ptr %r2
  %49 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %48), !dbg !19
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %47, i64 0, i64 0
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %5
  %54 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !20
  store ptr addrspace(1) null, ptr %6
  %55 = load ptr addrspace(1), ptr %r2
  %56 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 288230376151711744
  %58 = call i64 @_bal_mapping_set(ptr addrspace(1) %55, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441209188), ptr addrspace(1) %57), !dbg !21
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %101
60:
  %61 = load ptr addrspace(1), ptr %16
  call void @_bal_panic(ptr addrspace(1) %61), !dbg !38
  unreachable
62:
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 4356), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %63), !dbg !8
  unreachable
64:
  %65 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 3
  %67 = load ptr addrspace(1), ptr addrspace(1) %66, align 8
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = load ptr addrspace(1), ptr %r2
  %70 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %69), !dbg !23
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 0
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  store i64 1, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %7
  %75 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %75), !dbg !24
  store ptr addrspace(1) null, ptr %8
  %76 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root3, i64 1), !dbg !25
  %77 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %76, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208676), ptr addrspace(1) %78), !dbg !26
  store ptr addrspace(1) %76, ptr %9
  %79 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root4, i64 1), !dbg !27
  %80 = load ptr addrspace(1), ptr %9
  call void @_bal_mapping_init_member(ptr addrspace(1) %79, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261412), ptr addrspace(1) %80), !dbg !28
  store ptr addrspace(1) %79, ptr %10
  %81 = load ptr addrspace(1), ptr %10
  store ptr addrspace(1) %81, ptr %r3
  %82 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !29
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 3
  %84 = load ptr addrspace(1), ptr addrspace(1) %83, align 8
  %85 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %86 = load ptr addrspace(1), ptr %r3
  %87 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %86), !dbg !30
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %85, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %82, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %11
  %92 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !31
  store ptr addrspace(1) null, ptr %12
  %93 = load ptr addrspace(1), ptr %r3
  %94 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %93, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261412)), !dbg !32
  %95 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %93, ptr addrspace(1) %94), !dbg !33
  store ptr addrspace(1) %95, ptr %13
  %96 = load ptr addrspace(1), ptr %13
  %97 = addrspacecast ptr bitcast(ptr @.dec6 to ptr) to ptr addrspace(1)
  %98 = getelementptr i8, ptr addrspace(1) %97, i64 288230376151711744
  %99 = call i64 @_bal_mapping_set(ptr addrspace(1) %96, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208676), ptr addrspace(1) %98), !dbg !34
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %104, label %116
101:
  %102 = or i64 %58, 5888
  %103 = call ptr addrspace(1) @_bal_panic_construct(i64 %102), !dbg !7
  store ptr addrspace(1) %103, ptr %16
  br label %60
104:
  %105 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !35
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 3
  %107 = load ptr addrspace(1), ptr addrspace(1) %106, align 8
  %108 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %109 = load ptr addrspace(1), ptr %r3
  %110 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %109), !dbg !36
  %111 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 0
  store ptr addrspace(1) %110, ptr addrspace(1) %111
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 1
  store i64 1, ptr addrspace(1) %112
  %113 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %114 = getelementptr i8, ptr addrspace(1) %113, i64 864691128455135236
  store ptr addrspace(1) %114, ptr %14
  %115 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %115), !dbg !37
  store ptr addrspace(1) null, ptr %15
  ret void
116:
  %117 = or i64 %99, 7424
  %118 = call ptr addrspace(1) @_bal_panic_construct(i64 %117), !dbg !7
  store ptr addrspace(1) %118, ptr %16
  br label %60
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/record1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 17, column: 16, scope: !5)
!9 = !DILocation(line: 18, column: 12, scope: !5)
!10 = !DILocation(line: 18, column: 12, scope: !5)
!11 = !DILocation(line: 19, column: 15, scope: !5)
!12 = !DILocation(line: 19, column: 15, scope: !5)
!13 = !DILocation(line: 19, column: 4, scope: !5)
!14 = !DILocation(line: 21, column: 12, scope: !5)
!15 = !DILocation(line: 21, column: 12, scope: !5)
!16 = !DILocation(line: 21, column: 12, scope: !5)
!17 = !DILocation(line: 21, column: 12, scope: !5)
!18 = !DILocation(line: 22, column: 15, scope: !5)
!19 = !DILocation(line: 22, column: 15, scope: !5)
!20 = !DILocation(line: 22, column: 4, scope: !5)
!21 = !DILocation(line: 23, column: 6, scope: !5)
!22 = !DILocation(line: 24, column: 15, scope: !5)
!23 = !DILocation(line: 24, column: 15, scope: !5)
!24 = !DILocation(line: 24, column: 4, scope: !5)
!25 = !DILocation(line: 26, column: 17, scope: !5)
!26 = !DILocation(line: 26, column: 17, scope: !5)
!27 = !DILocation(line: 26, column: 12, scope: !5)
!28 = !DILocation(line: 26, column: 12, scope: !5)
!29 = !DILocation(line: 27, column: 15, scope: !5)
!30 = !DILocation(line: 27, column: 15, scope: !5)
!31 = !DILocation(line: 27, column: 4, scope: !5)
!32 = !DILocation(line: 29, column: 6, scope: !5)
!33 = !DILocation(line: 29, column: 6, scope: !5)
!34 = !DILocation(line: 29, column: 8, scope: !5)
!35 = !DILocation(line: 30, column: 15, scope: !5)
!36 = !DILocation(line: 30, column: 15, scope: !5)
!37 = !DILocation(line: 30, column: 4, scope: !5)
!38 = !DILocation(line: 31, column: 0, scope: !5)
