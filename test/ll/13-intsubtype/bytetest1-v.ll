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
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %17, label %16
16:
  call void @_B_b(i64 0), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_b(i64 1), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_b(i64 254), !dbg !13
  store ptr addrspace(1) null, ptr %3
  call void @_B_b(i64 255), !dbg !14
  store ptr addrspace(1) null, ptr %4
  call void @_B_b(i64 128), !dbg !15
  store ptr addrspace(1) null, ptr %5
  call void @_B_b(i64 127), !dbg !16
  store ptr addrspace(1) null, ptr %6
  call void @_B_b(i64 -1), !dbg !17
  store ptr addrspace(1) null, ptr %7
  call void @_B_b(i64 256), !dbg !18
  store ptr addrspace(1) null, ptr %8
  call void @_B_b(i64 257), !dbg !19
  store ptr addrspace(1) null, ptr %9
  call void @_B_b(i64 -2), !dbg !20
  store ptr addrspace(1) null, ptr %10
  call void @_B_b(i64 65536), !dbg !21
  store ptr addrspace(1) null, ptr %11
  call void @_B_b(i64 4294967296), !dbg !22
  store ptr addrspace(1) null, ptr %12
  ret void
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !10
  unreachable
}
define internal void @_B_b(i64 %0) !dbg !7 {
  %n = alloca i64
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %26, label %8
8:
  store i64 %0, ptr %n
  %9 = load i64, ptr %n
  %10 = icmp sle i64 0, %9
  %11 = icmp sge i64 255, %9
  %12 = and i1 %10, %11
  store i1 %12, ptr %2
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = load i1, ptr %2
  %18 = zext i1 %17 to i64
  %19 = or i64 %18, 72057594037927936
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 0
  store ptr addrspace(1) %20, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %3
  %25 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %25), !dbg !26
  store ptr addrspace(1) null, ptr %4
  ret void
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 4612), !dbg !23
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !24
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/bytetest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"b", linkageName:"_B_b", scope: !1, file: !1, line: 18, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 5, column: 4, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 4, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
!18 = !DILocation(line: 11, column: 4, scope: !5)
!19 = !DILocation(line: 12, column: 4, scope: !5)
!20 = !DILocation(line: 13, column: 4, scope: !5)
!21 = !DILocation(line: 14, column: 4, scope: !5)
!22 = !DILocation(line: 15, column: 4, scope: !5)
!23 = !DILocation(line: 0, column: 0, scope: !7)
!24 = !DILocation(line: 18, column: 9, scope: !7)
!25 = !DILocation(line: 19, column: 15, scope: !7)
!26 = !DILocation(line: 19, column: 4, scope: !7)
