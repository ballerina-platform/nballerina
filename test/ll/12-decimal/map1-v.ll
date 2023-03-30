@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452209997103235072], align 8
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 35, i64 2452139628359057408], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 35, i64 2454532165661097984], align 8
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 18, i64 2452139628359057408], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 35, i64 2454602534405275648], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %m2 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %66, label %15
15:
  %16 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !9
  %17 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %18 = getelementptr i8, ptr addrspace(1) %17, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208696), ptr addrspace(1) %18), !dbg !10
  %19 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %20 = getelementptr i8, ptr addrspace(1) %19, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208952), ptr addrspace(1) %20), !dbg !11
  %21 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %16, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441209208), ptr addrspace(1) %22), !dbg !12
  store ptr addrspace(1) %16, ptr %1
  %23 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %23, ptr %m1
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load ptr addrspace(1), ptr %m1
  %29 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %28), !dbg !14
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %2
  %34 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !15
  store ptr addrspace(1) null, ptr %3
  %35 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 1), !dbg !16
  %36 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 288230376151711744
  call void @_bal_mapping_init_member(ptr addrspace(1) %35, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208696), ptr addrspace(1) %37), !dbg !17
  store ptr addrspace(1) %35, ptr %4
  %38 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %38, ptr %m2
  %39 = load ptr addrspace(1), ptr %m2
  %40 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %39, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208696)), !dbg !18
  store ptr addrspace(1) %40, ptr %5
  %41 = load ptr addrspace(1), ptr %5
  %42 = addrspacecast ptr addrspace(1) %41 to ptr
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 2233785415175766016
  %45 = icmp eq i64 %44, 288230376151711744
  store i1 %45, ptr %6
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !19
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load i1, ptr %6
  %51 = zext i1 %50 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, ptr addrspace(1) null, i64 %52
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %7
  %58 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !20
  store ptr addrspace(1) null, ptr %8
  %59 = load ptr addrspace(1), ptr %m2
  %60 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 288230376151711744
  %62 = call i64 @_bal_mapping_set(ptr addrspace(1) %59, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441208952), ptr addrspace(1) %61), !dbg !21
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %68, label %80
64:
  %65 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %65), !dbg !25
  unreachable
66:
  %67 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %67), !dbg !8
  unreachable
68:
  %69 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 3
  %71 = load ptr addrspace(1), ptr addrspace(1) %70, align 8
  %72 = bitcast ptr addrspace(1) %71 to ptr addrspace(1)
  %73 = load ptr addrspace(1), ptr %m2
  %74 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %73), !dbg !23
  %75 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %72, i64 0, i64 0
  store ptr addrspace(1) %74, ptr addrspace(1) %75
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %69, i64 0, i32 1
  store i64 1, ptr addrspace(1) %76
  %77 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %9
  %79 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %79), !dbg !24
  store ptr addrspace(1) null, ptr %10
  ret void
80:
  %81 = or i64 %62, 2304
  %82 = call ptr addrspace(1) @_bal_panic_construct(i64 %81), !dbg !7
  store ptr addrspace(1) %82, ptr %11
  br label %64
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/map1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 22, scope: !5)
!10 = !DILocation(line: 3, column: 22, scope: !5)
!11 = !DILocation(line: 3, column: 22, scope: !5)
!12 = !DILocation(line: 3, column: 22, scope: !5)
!13 = !DILocation(line: 4, column: 15, scope: !5)
!14 = !DILocation(line: 4, column: 15, scope: !5)
!15 = !DILocation(line: 4, column: 4, scope: !5)
!16 = !DILocation(line: 6, column: 26, scope: !5)
!17 = !DILocation(line: 6, column: 26, scope: !5)
!18 = !DILocation(line: 7, column: 17, scope: !5)
!19 = !DILocation(line: 7, column: 15, scope: !5)
!20 = !DILocation(line: 7, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 6, scope: !5)
!22 = !DILocation(line: 10, column: 15, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 11, column: 0, scope: !5)
