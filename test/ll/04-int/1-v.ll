@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %two48 = alloca i64
  %1 = alloca ptr addrspace(1)
  %two55 = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %two56 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %two62 = alloca i64
  %6 = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %19, label %12
12:
  store i64 281474976710656, ptr %two48
  %13 = load i64, ptr %two48
  call void @_B_testAround(i64 %13), !dbg !15
  store ptr addrspace(1) null, ptr %1
  %14 = load i64, ptr %two48
  %15 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %14, i64 128)
  %16 = extractvalue {i64, i1} %15, 1
  br i1 %16, label %28, label %21
17:
  %18 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !19
  unreachable
19:
  %20 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !14
  unreachable
21:
  %22 = extractvalue {i64, i1} %15, 0
  store i64 %22, ptr %2
  %23 = load i64, ptr %2
  store i64 %23, ptr %two55
  %24 = load i64, ptr %two55
  call void @_B_testAround(i64 %24), !dbg !16
  store ptr addrspace(1) null, ptr %3
  %25 = load i64, ptr %two55
  %26 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %25, i64 2)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %37, label %30
28:
  %29 = call ptr addrspace(1) @_bal_panic_construct(i64 2817), !dbg !13
  store ptr addrspace(1) %29, ptr %8
  br label %17
30:
  %31 = extractvalue {i64, i1} %26, 0
  store i64 %31, ptr %4
  %32 = load i64, ptr %4
  store i64 %32, ptr %two56
  %33 = load i64, ptr %two56
  call void @_B_testAround(i64 %33), !dbg !17
  store ptr addrspace(1) null, ptr %5
  %34 = load i64, ptr %two56
  %35 = call {i64, i1} @llvm.smul.with.overflow.i64.i64(i64 %34, i64 64)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %43, label %39
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 4353), !dbg !13
  store ptr addrspace(1) %38, ptr %8
  br label %17
39:
  %40 = extractvalue {i64, i1} %35, 0
  store i64 %40, ptr %6
  %41 = load i64, ptr %6
  store i64 %41, ptr %two62
  %42 = load i64, ptr %two62
  call void @_B_testAround(i64 %42), !dbg !18
  store ptr addrspace(1) null, ptr %7
  ret void
43:
  %44 = call ptr addrspace(1) @_bal_panic_construct(i64 5889), !dbg !13
  store ptr addrspace(1) %44, ptr %8
  br label %17
}
define internal void @_B_testAround(i64 %0) !dbg !7 {
  %pow2 = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i8
  %12 = load ptr, ptr @_bal_stack_guard
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %20, label %14
14:
  store i64 %0, ptr %pow2
  %15 = load i64, ptr %pow2
  %16 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %15, i64 1)
  %17 = extractvalue {i64, i1} %16, 1
  br i1 %17, label %28, label %22
18:
  %19 = load ptr addrspace(1), ptr %10
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !26
  unreachable
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 7940), !dbg !20
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !21
  unreachable
22:
  %23 = extractvalue {i64, i1} %16, 0
  store i64 %23, ptr %2
  %24 = load i64, ptr %2
  call void @_B_roundTrip(i64 %24), !dbg !22
  store ptr addrspace(1) null, ptr %3
  %25 = load i64, ptr %pow2
  %26 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %25)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %37, label %30
28:
  %29 = call ptr addrspace(1) @_bal_panic_construct(i64 8193), !dbg !20
  store ptr addrspace(1) %29, ptr %10
  br label %18
30:
  %31 = extractvalue {i64, i1} %26, 0
  store i64 %31, ptr %4
  %32 = load i64, ptr %4
  call void @_B_roundTrip(i64 %32), !dbg !23
  store ptr addrspace(1) null, ptr %5
  %33 = load i64, ptr %pow2
  call void @_B_roundTrip(i64 %33), !dbg !24
  store ptr addrspace(1) null, ptr %6
  %34 = load i64, ptr %pow2
  %35 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %34)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %44, label %39
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 8449), !dbg !20
  store ptr addrspace(1) %38, ptr %10
  br label %18
39:
  %40 = extractvalue {i64, i1} %35, 0
  store i64 %40, ptr %7
  %41 = load i64, ptr %7
  %42 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %41, i64 1)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %49, label %46
44:
  %45 = call ptr addrspace(1) @_bal_panic_construct(i64 8961), !dbg !20
  store ptr addrspace(1) %45, ptr %10
  br label %18
46:
  %47 = extractvalue {i64, i1} %42, 0
  store i64 %47, ptr %8
  %48 = load i64, ptr %8
  call void @_B_roundTrip(i64 %48), !dbg !25
  store ptr addrspace(1) null, ptr %9
  ret void
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 8961), !dbg !20
  store ptr addrspace(1) %50, ptr %10
  br label %18
}
define internal void @_B_roundTrip(i64 %0) !dbg !9 {
  %n = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %20, label %12
12:
  store i64 %0, ptr %n
  %13 = load i64, ptr %n
  %14 = call ptr addrspace(1) @_B_toAny(i64 %13), !dbg !29
  store ptr addrspace(1) %14, ptr %2
  %15 = load ptr addrspace(1), ptr %2
  %16 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %15), !dbg !30
  %17 = extractvalue {ptr addrspace(1), i1} %16, 1
  br i1 %17, label %29, label %22
18:
  %19 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !34
  unreachable
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 9732), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !28
  unreachable
22:
  %23 = extractvalue {ptr addrspace(1), i1} %16, 0
  store ptr addrspace(1) %23, ptr %3
  %24 = load ptr addrspace(1), ptr %3
  %25 = addrspacecast ptr addrspace(1) %24 to ptr
  %26 = ptrtoint ptr %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 144115188075855872
  br i1 %28, label %31, label %49
29:
  %30 = call ptr addrspace(1) @_bal_panic_construct(i64 9985), !dbg !27
  store ptr addrspace(1) %30, ptr %8
  br label %18
31:
  %32 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %24), !dbg !31
  store i64 %32, ptr %4
  %33 = load i64, ptr %n
  %34 = load i64, ptr %4
  %35 = icmp eq i64 %33, %34
  store i1 %35, ptr %5
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load i1, ptr %5
  %41 = zext i1 %40 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %6
  %48 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !33
  store ptr addrspace(1) null, ptr %7
  ret void
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 9987), !dbg !27
  store ptr addrspace(1) %50, ptr %8
  br label %18
}
define internal ptr addrspace(1) @_B_toAny(i64 %0) !dbg !11 {
  %n = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, ptr %n
  %6 = load i64, ptr %n
  %7 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %6), !dbg !37
  ret ptr addrspace(1) %7
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 10756), !dbg !35
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !36
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-int/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"testAround", linkageName:"_B_testAround", scope: !1, file: !1, line: 31, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"roundTrip", linkageName:"_B_roundTrip", scope: !1, file: !1, line: 38, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"toAny", linkageName:"_B_toAny", scope: !1, file: !1, line: 42, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 12, column: 4, scope: !5)
!17 = !DILocation(line: 18, column: 4, scope: !5)
!18 = !DILocation(line: 24, column: 4, scope: !5)
!19 = !DILocation(line: 29, column: 0, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
!21 = !DILocation(line: 31, column: 9, scope: !7)
!22 = !DILocation(line: 32, column: 4, scope: !7)
!23 = !DILocation(line: 33, column: 4, scope: !7)
!24 = !DILocation(line: 34, column: 4, scope: !7)
!25 = !DILocation(line: 35, column: 4, scope: !7)
!26 = !DILocation(line: 36, column: 0, scope: !7)
!27 = !DILocation(line: 0, column: 0, scope: !9)
!28 = !DILocation(line: 38, column: 9, scope: !9)
!29 = !DILocation(line: 39, column: 25, scope: !9)
!30 = !DILocation(line: 39, column: 20, scope: !9)
!31 = !DILocation(line: 39, column: 20, scope: !9)
!32 = !DILocation(line: 39, column: 15, scope: !9)
!33 = !DILocation(line: 39, column: 4, scope: !9)
!34 = !DILocation(line: 40, column: 0, scope: !9)
!35 = !DILocation(line: 0, column: 0, scope: !11)
!36 = !DILocation(line: 42, column: 9, scope: !11)
!37 = !DILocation(line: 43, column: 4, scope: !11)
