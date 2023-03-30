@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %9, label %5
5:
  %6 = and i64 72057594037927935, 1
  %7 = or i64 2449958197289549824, %6
  %8 = getelementptr i8, ptr addrspace(1) null, i64 %7
  call void @_B_foo(ptr addrspace(1) %8), !dbg !11
  store ptr addrspace(1) null, ptr %1
  ret void
9:
  %10 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %10), !dbg !10
  unreachable
}
define internal void @_B_foo(ptr addrspace(1) %0) !dbg !7 {
  %v = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %b = alloca i1
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %41, label %9
9:
  store ptr addrspace(1) %0, ptr %v
  %10 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %10, ptr %x
  %11 = load ptr addrspace(1), ptr %x
  %12 = addrspacecast ptr addrspace(1) %11 to ptr
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 144115188075855872
  br i1 %15, label %16, label %19
16:
  %17 = load ptr addrspace(1), ptr %x
  %18 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %17), !dbg !14
  store i64 %18, ptr %x.1
  store i1 1, ptr %b
  br label %31
19:
  %20 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %20, ptr %x.2
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load ptr addrspace(1), ptr %x
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %3
  %30 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !17
  store ptr addrspace(1) null, ptr %4
  ret void
31:
  %32 = load i1, ptr %b
  br i1 %32, label %33, label %37
33:
  %34 = load i64, ptr %x.1
  %35 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %34, i64 1)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %47, label %43
37:
  br label %31
38:
  br label %19
39:
  %40 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %40), !dbg !18
  unreachable
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !12
  call void @_bal_panic(ptr addrspace(1) %42), !dbg !13
  unreachable
43:
  %44 = extractvalue {i64, i1} %35, 0
  store i64 %44, ptr %2
  %45 = load i64, ptr %2
  %46 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %45), !dbg !15
  store ptr addrspace(1) %46, ptr %x
  br label %38
47:
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !12
  store ptr addrspace(1) %48, ptr %5
  br label %39
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-narrow/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 3, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 8, column: 9, scope: !7)
!14 = !DILocation(line: 10, column: 9, scope: !7)
!15 = !DILocation(line: 14, column: 18, scope: !7)
!16 = !DILocation(line: 19, column: 15, scope: !7)
!17 = !DILocation(line: 19, column: 4, scope: !7)
!18 = !DILocation(line: 20, column: 0, scope: !7)
