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
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %51, label %11
11:
  store ptr addrspace(1) %0, ptr %v
  %12 = load ptr addrspace(1), ptr %v
  store ptr addrspace(1) %12, ptr %x
  %13 = load ptr addrspace(1), ptr %x
  %14 = addrspacecast ptr addrspace(1) %13 to ptr
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 144115188075855872
  br i1 %17, label %18, label %21
18:
  %19 = load ptr addrspace(1), ptr %x
  %20 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %19), !dbg !14
  store i64 %20, ptr %x.1
  store i1 1, ptr %b
  store i64 0, ptr %i
  br label %33
21:
  %22 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %22, ptr %x.2
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = load ptr addrspace(1), ptr %x
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %5
  %32 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %32), !dbg !17
  store ptr addrspace(1) null, ptr %6
  ret void
33:
  %34 = load i64, ptr %i
  %35 = icmp slt i64 %34, 2
  store i1 %35, ptr %2
  %36 = load i1, ptr %2
  br i1 %36, label %38, label %37
37:
  br label %21
38:
  %39 = load i1, ptr %b
  br i1 %39, label %40, label %44
40:
  %41 = load i64, ptr %x.1
  %42 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %41, i64 1)
  %43 = extractvalue {i64, i1} %42, 1
  br i1 %43, label %57, label %53
44:
  br label %45
45:
  %46 = load i64, ptr %i
  %47 = add nsw i64 %46, 1
  store i64 %47, ptr %4
  %48 = load i64, ptr %4
  store i64 %48, ptr %i
  br label %33
49:
  %50 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %50), !dbg !18
  unreachable
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !12
  call void @_bal_panic(ptr addrspace(1) %52), !dbg !13
  unreachable
53:
  %54 = extractvalue {i64, i1} %42, 0
  store i64 %54, ptr %3
  %55 = load i64, ptr %3
  %56 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %55), !dbg !15
  store ptr addrspace(1) %56, ptr %x
  br label %37
57:
  %58 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !12
  store ptr addrspace(1) %58, ptr %7
  br label %49
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-narrow/12-v.bal", directory:"")
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
