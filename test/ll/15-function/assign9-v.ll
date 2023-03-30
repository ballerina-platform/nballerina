@_bal_stack_guard = external global ptr
@.func0 = internal unnamed_addr constant {ptr} {ptr @_B_foo}, align 8
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %b = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %12, label %6
6:
  %7 = and i64 72057594037927935, 5
  %8 = or i64 2449958197289549824, %7
  %9 = getelementptr i8, ptr addrspace(1) null, i64 %8
  store ptr addrspace(1) %9, ptr %a
  %10 = load ptr addrspace(1), ptr %a
  call void @_B_printI(ptr addrspace(1) %10), !dbg !13
  store ptr addrspace(1) null, ptr %1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr @.func0 to ptr addrspace(1)), i64 648518346341351424), ptr %b
  %11 = load ptr addrspace(1), ptr %b
  call void @_B_printI(ptr addrspace(1) %11), !dbg !14
  store ptr addrspace(1) null, ptr %2
  ret void
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !12
  unreachable
}
define internal void @_B_printI(ptr addrspace(1) %0) !dbg !7 {
  %i = alloca ptr addrspace(1)
  %i.1 = alloca i64
  %i.2 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %53, label %10
10:
  store ptr addrspace(1) %0, ptr %i
  %11 = load ptr addrspace(1), ptr %i
  %12 = addrspacecast ptr addrspace(1) %11 to ptr
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 144115188075855872
  br i1 %15, label %16, label %30
16:
  %17 = load ptr addrspace(1), ptr %i
  %18 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %17), !dbg !21
  store i64 %18, ptr %i.1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = load i64, ptr %i.1
  %24 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %23), !dbg !23
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) %24, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %2
  %29 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %29), !dbg !24
  store ptr addrspace(1) null, ptr %3
  br label %52
30:
  %31 = load ptr addrspace(1), ptr %i
  store ptr addrspace(1) %31, ptr %i.2
  %32 = load ptr addrspace(1), ptr %i.2
  %33 = ptrtoint ptr addrspace(1) %32 to i64
  %34 = and i64 %33, 72057594037927928
  %35 = getelementptr inbounds i8, ptr addrspace(1) null, i64 %34
  %36 = addrspacecast ptr addrspace(1) %35 to ptr
  %37 = bitcast ptr %36 to ptr
  %38 = getelementptr inbounds {ptr}, ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38
  %40 = call i64 %39(), !dbg !17
  store i64 %40, ptr %4
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load i64, ptr %4
  %46 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %45), !dbg !19
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %5
  %51 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !20
  store ptr addrspace(1) null, ptr %6
  br label %52
52:
  ret void
53:
  %54 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %54), !dbg !16
  unreachable
}
define internal i64 @_B_foo() !dbg !9 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 10
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 5124), !dbg !25
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !26
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/15-function/assign9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printI", linkageName:"_B_printI", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 11, column: 9, scope: !7)
!17 = !DILocation(line: 16, column: 19, scope: !7)
!18 = !DILocation(line: 16, column: 19, scope: !7)
!19 = !DILocation(line: 16, column: 19, scope: !7)
!20 = !DILocation(line: 16, column: 8, scope: !7)
!21 = !DILocation(line: 17, column: 4, scope: !7)
!22 = !DILocation(line: 13, column: 19, scope: !7)
!23 = !DILocation(line: 13, column: 19, scope: !7)
!24 = !DILocation(line: 13, column: 8, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 20, column: 9, scope: !9)
