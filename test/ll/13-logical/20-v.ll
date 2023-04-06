@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %42, label %10
10:
  %11 = and i64 72057594037927935, 1
  %12 = or i64 2449958197289549824, %11
  %13 = getelementptr i8, ptr addrspace(1) null, i64 %12
  %14 = call i1 @_B04rootf(ptr addrspace(1) %13), !dbg !11
  store i1 %14, ptr %1
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = load i1, ptr %1
  %20 = zext i1 %19 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) %22, ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %28 = call i1 @_B04rootf(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431131759)), !dbg !14
  store i1 %28, ptr %4
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load i1, ptr %4
  %34 = zext i1 %33 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, ptr addrspace(1) null, i64 %35
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %5
  %41 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !16
  store ptr addrspace(1) null, ptr %6
  ret void
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !10
  unreachable
}
define i1 @_B04rootf(ptr addrspace(1) %0) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %17, label %5
5:
  store ptr addrspace(1) %0, ptr %x
  %6 = load ptr addrspace(1), ptr %x
  %7 = addrspacecast ptr addrspace(1) %6 to ptr
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 2233785415175766016
  %10 = icmp eq i64 %9, 144115188075855872
  br i1 %10, label %11, label %14
11:
  %12 = load ptr addrspace(1), ptr %x
  %13 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %12), !dbg !19
  store i64 %13, ptr %x.1
  br label %14
14:
  %15 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %15, ptr %x.2
  %16 = load ptr addrspace(1), ptr %x.2
  store ptr addrspace(1) %16, ptr %_
  ret i1 1
17:
  %18 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !17
  call void @_bal_panic(ptr addrspace(1) %18), !dbg !18
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/20-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B04rootf", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 3, column: 15, scope: !5)
!12 = !DILocation(line: 3, column: 15, scope: !5)
!13 = !DILocation(line: 3, column: 4, scope: !5)
!14 = !DILocation(line: 4, column: 15, scope: !5)
!15 = !DILocation(line: 4, column: 15, scope: !5)
!16 = !DILocation(line: 4, column: 4, scope: !5)
!17 = !DILocation(line: 0, column: 0, scope: !7)
!18 = !DILocation(line: 7, column: 16, scope: !7)
!19 = !DILocation(line: 8, column: 9, scope: !7)
