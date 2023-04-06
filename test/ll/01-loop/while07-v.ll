@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %9, label %8
8:
  call void @_B_printClosestSquareNum(i64 1), !dbg !13
  store ptr addrspace(1) null, ptr %1
  call void @_B_printClosestSquareNum(i64 0), !dbg !14
  store ptr addrspace(1) null, ptr %2
  call void @_B_printClosestSquareNum(i64 5), !dbg !15
  store ptr addrspace(1) null, ptr %3
  call void @_B_printClosestSquareNum(i64 17), !dbg !16
  store ptr addrspace(1) null, ptr %4
  ret void
9:
  %10 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %10), !dbg !12
  unreachable
}
define internal void @_B_printClosestSquareNum(i64 %0) !dbg !7 {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %40, label %11
11:
  store i64 %0, ptr %x
  %12 = load i64, ptr %x
  store i64 %12, ptr %i
  br label %13
13:
  %14 = load i64, ptr %i
  %15 = icmp sge i64 %14, 0
  store i1 %15, ptr %2
  %16 = load i1, ptr %2
  br i1 %16, label %17, label %21
17:
  %18 = load i64, ptr %i
  %19 = call i1 @_B_isSquareNumber(i64 %18), !dbg !19
  store i1 %19, ptr %3
  %20 = load i1, ptr %3
  br i1 %20, label %22, label %34
21:
  ret void
22:
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = load i64, ptr %i
  %28 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %27), !dbg !22
  %29 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %28, ptr addrspace(1) %29
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %30
  %31 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 864691128455135236
  store ptr addrspace(1) %32, ptr %4
  %33 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %33), !dbg !23
  store ptr addrspace(1) null, ptr %5
  ret void
34:
  %35 = load i64, ptr %i
  %36 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %35, i64 1)
  %37 = extractvalue {i64, i1} %36, 1
  br i1 %37, label %45, label %42
38:
  %39 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !20
  unreachable
40:
  %41 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %41), !dbg !18
  unreachable
42:
  %43 = extractvalue {i64, i1} %36, 0
  store i64 %43, ptr %6
  %44 = load i64, ptr %6
  store i64 %44, ptr %i
  br label %13
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 4609), !dbg !17
  store ptr addrspace(1) %46, ptr %7
  br label %38
}
define internal i1 @_B_isSquareNumber(i64 %0) !dbg !9 {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i1
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %37, label %12
12:
  store i64 %0, ptr %x
  store i64 0, ptr %i
  br label %13
13:
  %14 = load i64, ptr %i
  %15 = load i64, ptr %x
  %16 = icmp sle i64 %14, %15
  store i1 %16, ptr %2
  %17 = load i1, ptr %2
  br i1 %17, label %18, label %23
18:
  %19 = load i64, ptr %i
  %20 = load i64, ptr %i
  %21 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %19, i64 %20)
  %22 = extractvalue {i64, i1} %21, 1
  br i1 %22, label %45, label %39
23:
  ret i1 0
24:
  ret i1 1
25:
  %26 = load i64, ptr %i
  %27 = load i64, ptr %i
  %28 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %26, i64 %27)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %53, label %47
30:
  ret i1 0
31:
  %32 = load i64, ptr %i
  %33 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %32, i64 1)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %58, label %55
35:
  %36 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !26
  unreachable
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 5636), !dbg !24
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !25
  unreachable
39:
  %40 = extractvalue {i64, i1} %21, 0
  store i64 %40, ptr %3
  %41 = load i64, ptr %3
  %42 = load i64, ptr %x
  %43 = icmp eq i64 %41, %42
  store i1 %43, ptr %4
  %44 = load i1, ptr %4
  br i1 %44, label %24, label %25
45:
  %46 = call ptr addrspace(1) @_bal_panic_construct(i64 6401), !dbg !24
  store ptr addrspace(1) %46, ptr %8
  br label %35
47:
  %48 = extractvalue {i64, i1} %28, 0
  store i64 %48, ptr %5
  %49 = load i64, ptr %5
  %50 = load i64, ptr %x
  %51 = icmp sgt i64 %49, %50
  store i1 %51, ptr %6
  %52 = load i1, ptr %6
  br i1 %52, label %30, label %31
53:
  %54 = call ptr addrspace(1) @_bal_panic_construct(i64 6913), !dbg !24
  store ptr addrspace(1) %54, ptr %8
  br label %35
55:
  %56 = extractvalue {i64, i1} %33, 0
  store i64 %56, ptr %7
  %57 = load i64, ptr %7
  store i64 %57, ptr %i
  br label %13
58:
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 7681), !dbg !24
  store ptr addrspace(1) %59, ptr %8
  br label %35
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/while07-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printClosestSquareNum", linkageName:"_B_printClosestSquareNum", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"isSquareNumber", linkageName:"_B_isSquareNumber", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 11, column: 9, scope: !7)
!19 = !DILocation(line: 14, column: 12, scope: !7)
!20 = !DILocation(line: 20, column: 0, scope: !7)
!21 = !DILocation(line: 15, column: 23, scope: !7)
!22 = !DILocation(line: 15, column: 23, scope: !7)
!23 = !DILocation(line: 15, column: 12, scope: !7)
!24 = !DILocation(line: 0, column: 0, scope: !9)
!25 = !DILocation(line: 22, column: 9, scope: !9)
!26 = !DILocation(line: 34, column: 0, scope: !9)
