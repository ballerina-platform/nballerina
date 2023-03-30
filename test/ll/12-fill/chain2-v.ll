@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare {ptr addrspace(1), i64} @_bal_mapping_filling_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare i64 @_bal_mapping_indexed_set(ptr addrspace(1), i64, ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %24, label %11
11:
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !9
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %m
  %14 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 1), !dbg !10
  %15 = and i64 72057594037927935, 4
  %16 = or i64 2449958197289549824, %15
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  call void @_bal_mapping_init_member(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261417), ptr addrspace(1) %17), !dbg !11
  store ptr addrspace(1) %14, ptr %2
  %18 = load ptr addrspace(1), ptr %m
  %19 = load ptr addrspace(1), ptr %2
  %20 = call i64 @_bal_mapping_set(ptr addrspace(1) %18, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %19), !dbg !12
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %31
22:
  %23 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %23), !dbg !21
  unreachable
24:
  %25 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %25), !dbg !8
  unreachable
26:
  %27 = load ptr addrspace(1), ptr %m
  %28 = call {ptr addrspace(1), i64} @_bal_mapping_filling_get(ptr addrspace(1) %27, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !13
  %29 = extractvalue {ptr addrspace(1), i64} %28, 1
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %43, label %34
31:
  %32 = or i64 %20, 2048
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 %32), !dbg !7
  store ptr addrspace(1) %33, ptr %7
  br label %22
34:
  %35 = extractvalue {ptr addrspace(1), i64} %28, 0
  %36 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %27, ptr addrspace(1) %35), !dbg !14
  store ptr addrspace(1) %36, ptr %3
  %37 = load ptr addrspace(1), ptr %3
  %38 = and i64 72057594037927935, 2
  %39 = or i64 2449958197289549824, %38
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  %41 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %37, i64 0, ptr addrspace(1) %40), !dbg !15
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %46, label %61
43:
  %44 = or i64 %29, 2304
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 %44), !dbg !7
  store ptr addrspace(1) %45, ptr %7
  br label %22
46:
  %47 = load ptr addrspace(1), ptr %m
  %48 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %47, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !16
  %49 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %47, ptr addrspace(1) %48), !dbg !17
  store ptr addrspace(1) %49, ptr %4
  %50 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !18
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 3
  %52 = load ptr addrspace(1), ptr addrspace(1) %51, align 8
  %53 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %54 = load ptr addrspace(1), ptr %4
  %55 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %54), !dbg !19
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %53, i64 0, i64 0
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %5
  %60 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !20
  store ptr addrspace(1) null, ptr %6
  ret void
61:
  %62 = or i64 %41, 2304
  %63 = call ptr addrspace(1) @_bal_panic_construct(i64 %62), !dbg !7
  store ptr addrspace(1) %63, ptr %7
  br label %22
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/chain2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 15, scope: !5)
!10 = !DILocation(line: 8, column: 13, scope: !5)
!11 = !DILocation(line: 8, column: 13, scope: !5)
!12 = !DILocation(line: 8, column: 5, scope: !5)
!13 = !DILocation(line: 9, column: 5, scope: !5)
!14 = !DILocation(line: 9, column: 5, scope: !5)
!15 = !DILocation(line: 9, column: 10, scope: !5)
!16 = !DILocation(line: 10, column: 16, scope: !5)
!17 = !DILocation(line: 10, column: 16, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 11, column: 0, scope: !5)
