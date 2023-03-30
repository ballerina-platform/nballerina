@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %x.3 = alloca i64
  %x.4 = alloca ptr addrspace(1)
  %bf2 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %42, label %6
6:
  %7 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.1), !dbg !9
  store ptr addrspace(1) %7, ptr %x
  %8 = load ptr addrspace(1), ptr %x
  %9 = addrspacecast ptr addrspace(1) %8 to ptr
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 2233785415175766016
  %12 = icmp eq i64 %11, 144115188075855872
  br i1 %12, label %13, label %16
13:
  %14 = load ptr addrspace(1), ptr %x
  %15 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %14), !dbg !13
  store i64 %15, ptr %x.1
  ret void
16:
  %17 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %17, ptr %x.2
  %18 = zext i1 1 to i64
  %19 = or i64 %18, 72057594037927936
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  store ptr addrspace(1) %20, ptr %x
  %21 = load ptr addrspace(1), ptr %x
  %22 = addrspacecast ptr addrspace(1) %21 to ptr
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 144115188075855872
  br i1 %25, label %26, label %29
26:
  %27 = load ptr addrspace(1), ptr %x
  %28 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %27), !dbg !12
  store i64 %28, ptr %x.3
  ret void
29:
  %30 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %30, ptr %x.4
  %31 = load ptr addrspace(1), ptr %x.4
  store ptr addrspace(1) %31, ptr %bf2
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load ptr addrspace(1), ptr %bf2
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %1
  %41 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !11
  store ptr addrspace(1) null, ptr %2
  ret void
42:
  %43 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %43), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if15-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 24, scope: !5)
!10 = !DILocation(line: 17, column: 15, scope: !5)
!11 = !DILocation(line: 17, column: 4, scope: !5)
!12 = !DILocation(line: 18, column: 0, scope: !5)
!13 = !DILocation(line: 13, column: 8, scope: !5)
