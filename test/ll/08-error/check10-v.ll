@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_error_construct(ptr addrspace(1), i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %19, label %7
7:
  %8 = call ptr addrspace(1) @_B_passAlong(), !dbg !13
  store ptr addrspace(1) %8, ptr %1
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = load ptr addrspace(1), ptr %1
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %12, i64 0, i64 0
  store ptr addrspace(1) %13, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %2
  %18 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %18), !dbg !15
  store ptr addrspace(1) null, ptr %3
  ret void
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !12
  unreachable
}
define internal ptr addrspace(1) @_B_passAlong() !dbg !7 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %19, label %7
7:
  %8 = call ptr addrspace(1) @_B_alwaysErr(), !dbg !18
  store ptr addrspace(1) %8, ptr %1
  %9 = load ptr addrspace(1), ptr %1
  %10 = addrspacecast ptr addrspace(1) %9 to ptr
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 2233785415175766016
  %13 = icmp eq i64 %12, 432345564227567616
  br i1 %13, label %14, label %17
14:
  %15 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %15, ptr %2
  %16 = load ptr addrspace(1), ptr %2
  ret ptr addrspace(1) %16
17:
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %3
  ret ptr addrspace(1) null
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !17
  unreachable
}
define internal ptr addrspace(1) @_B_alwaysErr() !dbg !9 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %8, label %5
5:
  %6 = call ptr addrspace(1) @_bal_error_construct(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431984741), i64 11), !dbg !19
  store ptr addrspace(1) %6, ptr %1
  %7 = load ptr addrspace(1), ptr %1
  ret ptr addrspace(1) %7
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !19
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !20
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/08-error/check10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"passAlong", linkageName:"_B_passAlong", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"alwaysErr", linkageName:"_B_alwaysErr", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 2, column: 16, scope: !5)
!13 = !DILocation(line: 3, column: 15, scope: !5)
!14 = !DILocation(line: 3, column: 15, scope: !5)
!15 = !DILocation(line: 3, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 6, column: 9, scope: !7)
!18 = !DILocation(line: 7, column: 21, scope: !7)
!19 = !DILocation(line: 0, column: 0, scope: !9)
!20 = !DILocation(line: 10, column: 9, scope: !9)
