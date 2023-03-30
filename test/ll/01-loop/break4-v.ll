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
  %5 = alloca i1
  %i.1 = alloca i64
  %i.2 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %43, label %10
10:
  store i64 0, ptr %i
  br label %11
11:
  %12 = load i64, ptr %i
  %13 = icmp sge i64 %12, 0
  store i1 %13, ptr %1
  %14 = load i1, ptr %1
  br i1 %14, label %15, label %30
15:
  %16 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 3
  %18 = load ptr addrspace(1), ptr addrspace(1) %17, align 8
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = load i64, ptr %i
  %21 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %20), !dbg !10
  %22 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 0
  store ptr addrspace(1) %21, ptr addrspace(1) %22
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 1
  store i64 1, ptr addrspace(1) %23
  %24 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %25 = getelementptr i8, ptr addrspace(1) %24, i64 864691128455135236
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %26), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %27 = load i64, ptr %i
  %28 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %27, i64 1)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %51, label %45
30:
  ret void
31:
  %32 = load i64, ptr %i
  %33 = icmp sle i64 4, %32
  %34 = icmp sge i64 4, %32
  %35 = and i1 %33, %34
  br i1 %35, label %37, label %39
36:
  br label %11
37:
  %38 = load i64, ptr %i
  store i64 %38, ptr %i.1
  br label %30
39:
  %40 = load i64, ptr %i
  store i64 %40, ptr %i.2
  br label %36
41:
  %42 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %42), !dbg !12
  unreachable
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %44), !dbg !8
  unreachable
45:
  %46 = extractvalue {i64, i1} %28, 0
  store i64 %46, ptr %4
  %47 = load i64, ptr %4
  store i64 %47, ptr %i
  %48 = load i64, ptr %i
  %49 = icmp sge i64 %48, 1
  store i1 %49, ptr %5
  %50 = load i1, ptr %5
  br i1 %50, label %31, label %36
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 3073), !dbg !7
  store ptr addrspace(1) %52, ptr %6
  br label %41
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/break4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 11, column: 19, scope: !5)
!10 = !DILocation(line: 11, column: 19, scope: !5)
!11 = !DILocation(line: 11, column: 8, scope: !5)
!12 = !DILocation(line: 19, column: 0, scope: !5)
