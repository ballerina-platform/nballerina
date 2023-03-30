@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_B_printInts(i64 5), !dbg !11
  store ptr addrspace(1) null, ptr %1
  ret void
6:
  %7 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %7), !dbg !10
  unreachable
}
define internal void @_B_printInts(i64 %0) !dbg !7 {
  %maxExclusive = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %34, label %10
10:
  store i64 %0, ptr %maxExclusive
  store i64 0, ptr %i
  br label %11
11:
  %12 = load i64, ptr %i
  %13 = load i64, ptr %maxExclusive
  %14 = icmp slt i64 %12, %13
  store i1 %14, ptr %2
  %15 = load i1, ptr %2
  br i1 %15, label %16, label %31
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = load i64, ptr %i
  %22 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %21), !dbg !15
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) %22, ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %3
  %27 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !16
  store ptr addrspace(1) null, ptr %4
  %28 = load i64, ptr %i
  %29 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %28, i64 1)
  %30 = extractvalue {i64, i1} %29, 1
  br i1 %30, label %39, label %36
31:
  ret void
32:
  %33 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !17
  unreachable
34:
  %35 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !12
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !13
  unreachable
36:
  %37 = extractvalue {i64, i1} %29, 0
  store i64 %37, ptr %5
  %38 = load i64, ptr %5
  store i64 %38, ptr %i
  br label %11
39:
  %40 = call ptr addrspace(1) @_bal_panic_construct(i64 4353), !dbg !12
  store ptr addrspace(1) %40, ptr %6
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/while02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printInts", linkageName:"_B_printInts", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 13, column: 9, scope: !7)
!14 = !DILocation(line: 16, column: 19, scope: !7)
!15 = !DILocation(line: 16, column: 19, scope: !7)
!16 = !DILocation(line: 16, column: 8, scope: !7)
!17 = !DILocation(line: 19, column: 0, scope: !7)
