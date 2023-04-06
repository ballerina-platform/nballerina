@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %i = alloca ptr addrspace(1)
  %n = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %16, label %8
8:
  store ptr addrspace(1) null, ptr %i
  %9 = load ptr addrspace(1), ptr %i
  %10 = addrspacecast ptr addrspace(1) %9 to ptr
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %32
14:
  %15 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !11
  unreachable
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !8
  unreachable
18:
  store ptr addrspace(1) %9, ptr %1
  %19 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %19, ptr %n
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = zext i1 1 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %2
  %31 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !10
  store ptr addrspace(1) null, ptr %3
  ret void
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 1795), !dbg !7
  store ptr addrspace(1) %33, ptr %4
  br label %14
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-null/cast1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 15, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 0, scope: !5)
