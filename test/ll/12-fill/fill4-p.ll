@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare {ptr addrspace(1), i64} @_bal_mapping_filling_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
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
  br i1 %10, label %20, label %11
11:
  %12 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !9
  store ptr addrspace(1) %12, ptr %1
  %13 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %13, ptr %m
  %14 = load ptr addrspace(1), ptr %m
  %15 = call {ptr addrspace(1), i64} @_bal_mapping_filling_get(ptr addrspace(1) %14, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431787366)), !dbg !10
  %16 = extractvalue {ptr addrspace(1), i64} %15, 1
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %34, label %22
18:
  %19 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !20
  unreachable
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !8
  unreachable
22:
  %23 = extractvalue {ptr addrspace(1), i64} %15, 0
  %24 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %14, ptr addrspace(1) %23), !dbg !11
  store ptr addrspace(1) %24, ptr %2
  %25 = load ptr addrspace(1), ptr %2
  %26 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %25, i64 0), !dbg !12
  %27 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %25, ptr addrspace(1) %26), !dbg !13
  store ptr addrspace(1) %27, ptr %3
  %28 = load ptr addrspace(1), ptr %3
  %29 = and i64 72057594037927935, 42
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = call i64 @_bal_mapping_indexed_set(ptr addrspace(1) %28, i64 0, ptr addrspace(1) %31), !dbg !14
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %37, label %52
34:
  %35 = or i64 %16, 2048
  %36 = call ptr addrspace(1) @_bal_panic_construct(i64 %35), !dbg !7
  store ptr addrspace(1) %36, ptr %7
  br label %18
37:
  %38 = load ptr addrspace(1), ptr %m
  %39 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %38, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431787366)), !dbg !15
  %40 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %38, ptr addrspace(1) %39), !dbg !16
  store ptr addrspace(1) %40, ptr %4
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load ptr addrspace(1), ptr %4
  %46 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %45), !dbg !18
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %5
  %51 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !19
  store ptr addrspace(1) null, ptr %6
  ret void
52:
  %53 = or i64 %32, 2048
  %54 = call ptr addrspace(1) @_bal_panic_construct(i64 %53), !dbg !7
  store ptr addrspace(1) %54, ptr %7
  br label %18
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/fill4-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 16, scope: !5)
!10 = !DILocation(line: 8, column: 5, scope: !5)
!11 = !DILocation(line: 8, column: 5, scope: !5)
!12 = !DILocation(line: 8, column: 12, scope: !5)
!13 = !DILocation(line: 8, column: 12, scope: !5)
!14 = !DILocation(line: 8, column: 14, scope: !5)
!15 = !DILocation(line: 9, column: 16, scope: !5)
!16 = !DILocation(line: 9, column: 16, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 15, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
!20 = !DILocation(line: 10, column: 0, scope: !5)
