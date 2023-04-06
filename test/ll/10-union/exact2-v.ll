@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1)) readnone
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %v3 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %18, label %8
8:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261423), ptr %v1
  %9 = load ptr addrspace(1), ptr %v1
  %10 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %9), !dbg !9
  store ptr addrspace(1) %10, ptr %v2
  %11 = load ptr addrspace(1), ptr %v2
  %12 = addrspacecast ptr addrspace(1) %11 to ptr
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 360287970189639680
  br i1 %15, label %20, label %32
16:
  %17 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !12
  unreachable
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !8
  unreachable
20:
  store ptr addrspace(1) %11, ptr %1
  %21 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %21, ptr %v3
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = load ptr addrspace(1), ptr %v3
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %2
  %31 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !11
  store ptr addrspace(1) null, ptr %3
  ret void
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 1539), !dbg !7
  store ptr addrspace(1) %33, ptr %4
  br label %16
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-union/exact2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 20, scope: !5)
!10 = !DILocation(line: 7, column: 15, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 0, scope: !5)
