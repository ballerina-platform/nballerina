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
  %j = alloca i64
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %44, label %11
11:
  store i64 0, ptr %i
  br label %12
12:
  %13 = load i64, ptr %i
  %14 = icmp slt i64 %13, 5
  store i1 %14, ptr %1
  %15 = load i1, ptr %1
  br i1 %15, label %16, label %17
16:
  store i64 0, ptr %j
  br label %18
17:
  ret void
18:
  %19 = load i64, ptr %j
  %20 = load i64, ptr %i
  %21 = icmp slt i64 %19, %20
  store i1 %21, ptr %2
  %22 = load i1, ptr %2
  br i1 %22, label %23, label %38
23:
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load i64, ptr %j
  %29 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %28), !dbg !10
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %3
  %34 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !11
  store ptr addrspace(1) null, ptr %4
  %35 = load i64, ptr %j
  %36 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %35, i64 1)
  %37 = extractvalue {i64, i1} %36, 1
  br i1 %37, label %54, label %51
38:
  %39 = load i64, ptr %i
  %40 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %39, i64 1)
  %41 = extractvalue {i64, i1} %40, 1
  br i1 %41, label %49, label %46
42:
  %43 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !12
  unreachable
44:
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %45), !dbg !8
  unreachable
46:
  %47 = extractvalue {i64, i1} %40, 0
  store i64 %47, ptr %6
  %48 = load i64, ptr %6
  store i64 %48, ptr %i
  br label %12
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 3073), !dbg !7
  store ptr addrspace(1) %50, ptr %7
  br label %42
51:
  %52 = extractvalue {i64, i1} %36, 0
  store i64 %52, ptr %5
  %53 = load i64, ptr %5
  store i64 %53, ptr %j
  br label %18
54:
  %55 = call ptr addrspace(1) @_bal_panic_construct(i64 2561), !dbg !7
  store ptr addrspace(1) %55, ptr %7
  br label %42
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/while06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 9, column: 23, scope: !5)
!10 = !DILocation(line: 9, column: 23, scope: !5)
!11 = !DILocation(line: 9, column: 12, scope: !5)
!12 = !DILocation(line: 24, column: 0, scope: !5)
