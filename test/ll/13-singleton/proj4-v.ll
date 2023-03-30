@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %p = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %xy = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %65, label %13
13:
  %14 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !9
  %15 = and i64 72057594037927935, 44
  %16 = or i64 2449958197289549824, %15
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  call void @_bal_mapping_init_member(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %17), !dbg !10
  %18 = and i64 72057594037927935, 88
  %19 = or i64 2449958197289549824, %18
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  call void @_bal_mapping_init_member(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %20), !dbg !11
  call void @_bal_mapping_init_member(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187973998243696)), !dbg !12
  store ptr addrspace(1) %14, ptr %1
  %21 = load ptr addrspace(1), ptr %1
  %22 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %21), !dbg !13
  store ptr addrspace(1) %22, ptr %p
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261434), ptr %xy
  %23 = load ptr addrspace(1), ptr %xy
  %24 = load ptr addrspace(1), ptr %p
  %25 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %24, ptr addrspace(1) %23), !dbg !14
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %26, ptr %x
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load ptr addrspace(1), ptr %x
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %3
  %36 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !16
  store ptr addrspace(1) null, ptr %4
  %37 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root2, i64 2), !dbg !17
  %38 = and i64 72057594037927935, 44
  %39 = or i64 2449958197289549824, %38
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  call void @_bal_mapping_init_member(ptr addrspace(1) %37, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %40), !dbg !18
  %41 = and i64 72057594037927935, 88
  %42 = or i64 2449958197289549824, %41
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  call void @_bal_mapping_init_member(ptr addrspace(1) %37, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %43), !dbg !19
  store ptr addrspace(1) %37, ptr %5
  %44 = load ptr addrspace(1), ptr %5
  %45 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %44), !dbg !20
  store ptr addrspace(1) %45, ptr %p
  %46 = load ptr addrspace(1), ptr %xy
  %47 = load ptr addrspace(1), ptr %p
  %48 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %47, ptr addrspace(1) %46), !dbg !21
  store ptr addrspace(1) %48, ptr %6
  %49 = load ptr addrspace(1), ptr %6
  store ptr addrspace(1) %49, ptr %y
  %50 = load ptr addrspace(1), ptr %y
  %51 = icmp eq ptr addrspace(1) %50, null
  store i1 %51, ptr %7
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = load i1, ptr %7
  %57 = zext i1 %56 to i64
  %58 = or i64 %57, 72057594037927936
  %59 = getelementptr i8, ptr addrspace(1) null, i64 %58
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %8
  %64 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %64), !dbg !23
  store ptr addrspace(1) null, ptr %9
  ret void
65:
  %66 = call ptr addrspace(1) @_bal_panic_construct(i64 4100), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %66), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/proj4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 16, column: 16, scope: !5)
!9 = !DILocation(line: 17, column: 21, scope: !5)
!10 = !DILocation(line: 17, column: 21, scope: !5)
!11 = !DILocation(line: 17, column: 21, scope: !5)
!12 = !DILocation(line: 17, column: 21, scope: !5)
!13 = !DILocation(line: 17, column: 19, scope: !5)
!14 = !DILocation(line: 19, column: 21, scope: !5)
!15 = !DILocation(line: 20, column: 15, scope: !5)
!16 = !DILocation(line: 20, column: 4, scope: !5)
!17 = !DILocation(line: 22, column: 8, scope: !5)
!18 = !DILocation(line: 22, column: 8, scope: !5)
!19 = !DILocation(line: 22, column: 8, scope: !5)
!20 = !DILocation(line: 22, column: 6, scope: !5)
!21 = !DILocation(line: 23, column: 21, scope: !5)
!22 = !DILocation(line: 24, column: 15, scope: !5)
!23 = !DILocation(line: 24, column: 4, scope: !5)
