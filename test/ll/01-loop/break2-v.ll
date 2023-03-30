@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %8, label %7
7:
  call void @_B_printIfBetween(i64 6, i64 5, i64 7), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_printIfBetween(i64 1, i64 2, i64 3), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_printIfBetween(i64 0, i64 -1, i64 4), !dbg !13
  store ptr addrspace(1) null, ptr %3
  ret void
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !10
  unreachable
}
define internal void @_B_printIfBetween(i64 %0, i64 %1, i64 %2) !dbg !7 {
  %n = alloca i64
  %min = alloca i64
  %max = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %44, label %13
13:
  store i64 %0, ptr %n
  store i64 %1, ptr %min
  store i64 %2, ptr %max
  %14 = load i64, ptr %min
  store i64 %14, ptr %i
  br label %15
15:
  %16 = load i64, ptr %i
  %17 = load i64, ptr %max
  %18 = icmp sle i64 %16, %17
  store i1 %18, ptr %4
  %19 = load i1, ptr %4
  br i1 %19, label %20, label %25
20:
  %21 = load i64, ptr %i
  %22 = load i64, ptr %n
  %23 = icmp eq i64 %21, %22
  store i1 %23, ptr %5
  %24 = load i1, ptr %5
  br i1 %24, label %26, label %38
25:
  ret void
26:
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load i64, ptr %n
  %32 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %31), !dbg !18
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %6
  %37 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %37), !dbg !19
  store ptr addrspace(1) null, ptr %7
  br label %25
38:
  %39 = load i64, ptr %i
  %40 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %39, i64 1)
  %41 = extractvalue {i64, i1} %40, 1
  br i1 %41, label %49, label %46
42:
  %43 = load ptr addrspace(1), ptr %9
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !16
  unreachable
44:
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 2564), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %45), !dbg !15
  unreachable
46:
  %47 = extractvalue {i64, i1} %40, 0
  store i64 %47, ptr %8
  %48 = load i64, ptr %8
  store i64 %48, ptr %i
  br label %15
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 4353), !dbg !14
  store ptr addrspace(1) %50, ptr %9
  br label %42
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/break2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printIfBetween", linkageName:"_B_printIfBetween", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 10, column: 9, scope: !7)
!16 = !DILocation(line: 19, column: 0, scope: !7)
!17 = !DILocation(line: 14, column: 23, scope: !7)
!18 = !DILocation(line: 14, column: 23, scope: !7)
!19 = !DILocation(line: 14, column: 12, scope: !7)
