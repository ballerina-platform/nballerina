@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %20, label %7
7:
  %8 = call i64 @_B_a(i64 3, i64 9), !dbg !11
  store i64 %8, ptr %1
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = load i64, ptr %1
  %14 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %13), !dbg !13
  %15 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %12, i64 0, i64 0
  store ptr addrspace(1) %14, ptr addrspace(1) %15
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %16
  %17 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %18 = getelementptr i8, ptr addrspace(1) %17, i64 864691128455135236
  store ptr addrspace(1) %18, ptr %2
  %19 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %19), !dbg !14
  store ptr addrspace(1) null, ptr %3
  ret void
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !10
  unreachable
}
define internal i64 @_B_a(i64 %0, i64 %1) !dbg !7 {
  %m = alloca i64
  %n = alloca i64
  %m.1 = alloca i64
  %m.2 = alloca i64
  %3 = alloca i64
  %n.1 = alloca i64
  %n.2 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca ptr addrspace(1)
  %11 = alloca i8
  %12 = load ptr, ptr @_bal_stack_guard
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %42, label %14
14:
  store i64 %0, ptr %m
  store i64 %1, ptr %n
  %15 = load i64, ptr %m
  %16 = icmp sle i64 0, %15
  %17 = icmp sge i64 0, %15
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %24
19:
  %20 = load i64, ptr %m
  store i64 %20, ptr %m.1
  %21 = load i64, ptr %n
  %22 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %21, i64 1)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %72, label %69
24:
  %25 = load i64, ptr %m
  store i64 %25, ptr %m.2
  %26 = load i64, ptr %n
  %27 = icmp sle i64 0, %26
  %28 = icmp sge i64 0, %26
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %35
30:
  %31 = load i64, ptr %n
  store i64 %31, ptr %n.1
  %32 = load i64, ptr %m.2
  %33 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %32, i64 1)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %67, label %62
35:
  %36 = load i64, ptr %n
  store i64 %36, ptr %n.2
  %37 = load i64, ptr %m.2
  %38 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %37, i64 1)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %49, label %44
40:
  %41 = load ptr addrspace(1), ptr %10
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !20
  unreachable
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !16
  unreachable
44:
  %45 = extractvalue {i64, i1} %38, 0
  store i64 %45, ptr %6
  %46 = load i64, ptr %n.2
  %47 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %46, i64 1)
  %48 = extractvalue {i64, i1} %47, 1
  br i1 %48, label %60, label %51
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !15
  store ptr addrspace(1) %50, ptr %10
  br label %40
51:
  %52 = extractvalue {i64, i1} %47, 0
  store i64 %52, ptr %7
  %53 = load i64, ptr %m.2
  %54 = load i64, ptr %7
  %55 = call i64 @_B_a(i64 %53, i64 %54), !dbg !17
  store i64 %55, ptr %8
  %56 = load i64, ptr %6
  %57 = load i64, ptr %8
  %58 = call i64 @_B_a(i64 %56, i64 %57), !dbg !18
  store i64 %58, ptr %9
  %59 = load i64, ptr %9
  ret i64 %59
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !15
  store ptr addrspace(1) %61, ptr %10
  br label %40
62:
  %63 = extractvalue {i64, i1} %33, 0
  store i64 %63, ptr %4
  %64 = load i64, ptr %4
  %65 = call i64 @_B_a(i64 %64, i64 1), !dbg !19
  store i64 %65, ptr %5
  %66 = load i64, ptr %5
  ret i64 %66
67:
  %68 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !15
  store ptr addrspace(1) %68, ptr %10
  br label %40
69:
  %70 = extractvalue {i64, i1} %22, 0
  store i64 %70, ptr %3
  %71 = load i64, ptr %3
  ret i64 %71
72:
  %73 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !15
  store ptr addrspace(1) %73, ptr %10
  br label %40
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-bench/ackermann-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"a", linkageName:"_B_a", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 15, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 4, column: 15, scope: !5)
!14 = !DILocation(line: 4, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 6, column: 9, scope: !7)
!17 = !DILocation(line: 14, column: 24, scope: !7)
!18 = !DILocation(line: 14, column: 15, scope: !7)
!19 = !DILocation(line: 11, column: 15, scope: !7)
!20 = !DILocation(line: 16, column: 0, scope: !7)
