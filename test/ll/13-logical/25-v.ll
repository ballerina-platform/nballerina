@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str1 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 13, i16 13, [20 x i8] c"unconditional\00\00\00\00\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define internal i1 @_B_doesADragonExplodeInTheWoods() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %8 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 3
  %9 = load ptr addrspace(1), ptr addrspace(1) %8, align 8
  %10 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %11 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %10, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570982313826), ptr addrspace(1) %11
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %7, i64 0, i32 1
  store i64 1, ptr addrspace(1) %12
  %13 = bitcast ptr addrspace(1) %7 to ptr addrspace(1)
  %14 = getelementptr i8, ptr addrspace(1) %13, i64 864691128455135236
  store ptr addrspace(1) %14, ptr %1
  %15 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %15), !dbg !12
  store ptr addrspace(1) null, ptr %2
  ret i1 1
16:
  %17 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %17), !dbg !10
  unreachable
}
define void @_B04rootmain() !dbg !7 {
  %x = alloca i64
  %x.1 = alloca i64
  %x.2 = alloca i64
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %26, label %7
7:
  store i64 1, ptr %x
  %8 = load i64, ptr %x
  %9 = icmp sle i64 42, %8
  %10 = icmp sge i64 42, %8
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %23
12:
  %13 = load i64, ptr %x
  store i64 %13, ptr %x.1
  %14 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 3
  %16 = load ptr addrspace(1), ptr addrspace(1) %15, align 8
  %17 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %18 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %17, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str1 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %18
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %14, i64 0, i32 1
  store i64 1, ptr addrspace(1) %19
  %20 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %21 = getelementptr i8, ptr addrspace(1) %20, i64 864691128455135236
  store ptr addrspace(1) %21, ptr %2
  %22 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %22), !dbg !17
  store ptr addrspace(1) null, ptr %3
  ret void
23:
  %24 = load i64, ptr %x
  store i64 %24, ptr %x.2
  %25 = call i1 @_B_doesADragonExplodeInTheWoods(), !dbg !15
  store i1 %25, ptr %1
  br label %12
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !14
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/25-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"doesADragonExplodeInTheWoods", linkageName:"_B_doesADragonExplodeInTheWoods", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 9, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 8, column: 16, scope: !7)
!15 = !DILocation(line: 10, column: 18, scope: !7)
!16 = !DILocation(line: 11, column: 19, scope: !7)
!17 = !DILocation(line: 11, column: 8, scope: !7)
