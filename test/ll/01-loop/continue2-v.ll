@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i64
  %i.1 = alloca i64
  %i.2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
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
  %12 = icmp slt i64 %11, 4
  store i1 %12, ptr %1
  %13 = load i1, ptr %1
  br i1 %13, label %14, label %18
14:
  %15 = load i64, ptr %i
  %16 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %15, i64 1)
  %17 = extractvalue {i64, i1} %16, 1
  br i1 %17, label %45, label %38
18:
  ret void
19:
  %20 = load i64, ptr %i
  store i64 %20, ptr %i.1
  br label %10
21:
  %22 = load i64, ptr %i
  store i64 %22, ptr %i.2
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = load i64, ptr %i.2
  %28 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %27), !dbg !10
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %3
  %33 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %33), !dbg !11
  store ptr addrspace(1) null, ptr %4
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
  %39 = extractvalue {i64, i1} %16, 0
  store i64 %39, ptr %2
  %40 = load i64, ptr %2
  store i64 %40, ptr %i
  %41 = load i64, ptr %i
  %42 = icmp sle i64 2, %41
  %43 = icmp sge i64 2, %41
  %44 = and i1 %42, %43
  br i1 %44, label %19, label %21
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 1793), !dbg !7
  store ptr addrspace(1) %46, ptr %5
  br label %34
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/continue2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 14, column: 19, scope: !5)
!10 = !DILocation(line: 14, column: 19, scope: !5)
!11 = !DILocation(line: 14, column: 8, scope: !5)
!12 = !DILocation(line: 16, column: 0, scope: !5)
