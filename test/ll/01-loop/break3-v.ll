@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %i.1 = alloca i64
  %i.2 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %36, label %9
9:
  store i64 0, ptr %i
  br label %10
10:
  %11 = load i64, ptr %i
  %12 = icmp sge i64 %11, 0
  store i1 %12, ptr %1
  %13 = load i1, ptr %1
  br i1 %13, label %14, label %29
14:
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = load i64, ptr %i
  %20 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %19), !dbg !10
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) %20, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %2
  %25 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %25), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %26 = load i64, ptr %i
  %27 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %26, i64 1)
  %28 = extractvalue {i64, i1} %27, 1
  br i1 %28, label %45, label %38
29:
  ret void
30:
  %31 = load i64, ptr %i
  store i64 %31, ptr %i.1
  br label %29
32:
  %33 = load i64, ptr %i
  store i64 %33, ptr %i.2
  br label %10
34:
  %35 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %35), !dbg !12
  unreachable
36:
  %37 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %37), !dbg !8
  unreachable
38:
  %39 = extractvalue {i64, i1} %27, 0
  store i64 %39, ptr %4
  %40 = load i64, ptr %4
  store i64 %40, ptr %i
  %41 = load i64, ptr %i
  %42 = icmp sle i64 2, %41
  %43 = icmp sge i64 2, %41
  %44 = and i1 %42, %43
  br i1 %44, label %30, label %32
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 2561), !dbg !7
  store ptr addrspace(1) %46, ptr %5
  br label %34
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/break3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 9, column: 19, scope: !5)
!10 = !DILocation(line: 9, column: 19, scope: !5)
!11 = !DILocation(line: 9, column: 8, scope: !5)
!12 = !DILocation(line: 15, column: 0, scope: !5)
