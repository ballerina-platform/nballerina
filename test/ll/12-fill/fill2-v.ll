@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare {ptr addrspace(1), i64} @_bal_mapping_filling_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1), ptr addrspace(1)) readnone
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
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
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %19, label %10
10:
  %11 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !9
  store ptr addrspace(1) %11, ptr %1
  %12 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %12, ptr %m
  %13 = load ptr addrspace(1), ptr %m
  %14 = call {ptr addrspace(1), i64} @_bal_mapping_filling_get(ptr addrspace(1) %13, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431787366)), !dbg !10
  %15 = extractvalue {ptr addrspace(1), i64} %14, 1
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %30, label %21
17:
  %18 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !18
  unreachable
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !8
  unreachable
21:
  %22 = extractvalue {ptr addrspace(1), i64} %14, 0
  %23 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %13, ptr addrspace(1) %22), !dbg !11
  store ptr addrspace(1) %23, ptr %2
  %24 = load ptr addrspace(1), ptr %2
  %25 = and i64 72057594037927935, 42
  %26 = or i64 2449958197289549824, %25
  %27 = getelementptr i8, ptr addrspace(1) null, i64 %26
  %28 = call i64 @_bal_mapping_set(ptr addrspace(1) %24, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431980386), ptr addrspace(1) %27), !dbg !12
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %48
30:
  %31 = or i64 %15, 1280
  %32 = call ptr addrspace(1) @_bal_panic_construct(i64 %31), !dbg !7
  store ptr addrspace(1) %32, ptr %6
  br label %17
33:
  %34 = load ptr addrspace(1), ptr %m
  %35 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %34, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431787366)), !dbg !13
  %36 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_ptr(ptr addrspace(1) %34, ptr addrspace(1) %35), !dbg !14
  store ptr addrspace(1) %36, ptr %3
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = load ptr addrspace(1), ptr %3
  %42 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %41), !dbg !16
  %43 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %40, i64 0, i64 0
  store ptr addrspace(1) %42, ptr addrspace(1) %43
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  store i64 1, ptr addrspace(1) %44
  %45 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 864691128455135236
  store ptr addrspace(1) %46, ptr %4
  %47 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %47), !dbg !17
  store ptr addrspace(1) null, ptr %5
  ret void
48:
  %49 = or i64 %28, 1280
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 %49), !dbg !7
  store ptr addrspace(1) %50, ptr %6
  br label %17
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/fill2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 22, scope: !5)
!10 = !DILocation(line: 5, column: 5, scope: !5)
!11 = !DILocation(line: 5, column: 5, scope: !5)
!12 = !DILocation(line: 5, column: 12, scope: !5)
!13 = !DILocation(line: 6, column: 16, scope: !5)
!14 = !DILocation(line: 6, column: 16, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 15, scope: !5)
!17 = !DILocation(line: 6, column: 4, scope: !5)
!18 = !DILocation(line: 7, column: 0, scope: !5)
