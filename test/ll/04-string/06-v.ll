@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %20, label %8
8:
  call void @_B_greet(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824)), !dbg !13
  store ptr addrspace(1) null, ptr %1
  %9 = call ptr addrspace(1) @_B_greeting(), !dbg !14
  store ptr addrspace(1) %9, ptr %2
  %10 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %11 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 3
  %12 = load ptr addrspace(1), ptr addrspace(1) %11, align 8
  %13 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %14 = load ptr addrspace(1), ptr %2
  %15 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %13, i64 0, i64 0
  store ptr addrspace(1) %14, ptr addrspace(1) %15
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %10, i64 0, i32 1
  store i64 1, ptr addrspace(1) %16
  %17 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %18 = getelementptr i8, ptr addrspace(1) %17, i64 864691128455135236
  store ptr addrspace(1) %18, ptr %3
  %19 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %19), !dbg !16
  store ptr addrspace(1) null, ptr %4
  ret void
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !12
  unreachable
}
define internal void @_B_greet(ptr addrspace(1) %0) !dbg !7 {
  %s = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %18, label %7
7:
  store ptr addrspace(1) %0, ptr %s
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = load ptr addrspace(1), ptr %s
  %13 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %11, i64 0, i64 0
  store ptr addrspace(1) %12, ptr addrspace(1) %13
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 1, ptr addrspace(1) %14
  %15 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %2
  %17 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %17), !dbg !20
  store ptr addrspace(1) null, ptr %3
  ret void
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !18
  unreachable
}
define internal ptr addrspace(1) @_B_greeting() !dbg !9 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441223016)
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !22
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-string/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"greet", linkageName:"_B_greet", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"greeting", linkageName:"_B_greeting", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 9, column: 9, scope: !7)
!19 = !DILocation(line: 10, column: 15, scope: !7)
!20 = !DILocation(line: 10, column: 4, scope: !7)
!21 = !DILocation(line: 0, column: 0, scope: !9)
!22 = !DILocation(line: 13, column: 9, scope: !9)
