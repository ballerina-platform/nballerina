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
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %11, label %10
10:
  call void @_B_toNil(i1 1), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_toNil(i1 0), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_toNil(i1 0), !dbg !13
  store ptr addrspace(1) null, ptr %3
  call void @_B_toNil(i1 0), !dbg !14
  store ptr addrspace(1) null, ptr %4
  call void @_B_toNil(i1 1), !dbg !15
  store ptr addrspace(1) null, ptr %5
  call void @_B_toNil(i1 1), !dbg !16
  store ptr addrspace(1) null, ptr %6
  ret void
11:
  %12 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !10
  unreachable
}
define internal void @_B_toNil(i1 %0) !dbg !7 {
  %b = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %21, label %7
7:
  store i1 %0, ptr %b
  %8 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %9 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 3
  %10 = load ptr addrspace(1), ptr addrspace(1) %9, align 8
  %11 = bitcast ptr addrspace(1) %10 to ptr addrspace(1)
  %12 = load i1, ptr %b
  %13 = zext i1 %12 to i64
  %14 = or i64 %13, 72057594037927936
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  %16 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %11, i64 0, i64 0
  store ptr addrspace(1) %15, ptr addrspace(1) %16
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %8, i64 0, i32 1
  store i64 1, ptr addrspace(1) %17
  %18 = bitcast ptr addrspace(1) %8 to ptr addrspace(1)
  %19 = getelementptr i8, ptr addrspace(1) %18, i64 864691128455135236
  store ptr addrspace(1) %19, ptr %2
  %20 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %20), !dbg !20
  store ptr addrspace(1) null, ptr %3
  ret void
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !18
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-nil/rel-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"toNil", linkageName:"_B_toNil", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 10, scope: !5)
!12 = !DILocation(line: 4, column: 24, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 10, scope: !5)
!15 = !DILocation(line: 8, column: 26, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 13, column: 9, scope: !7)
!19 = !DILocation(line: 14, column: 15, scope: !7)
!20 = !DILocation(line: 14, column: 4, scope: !7)
