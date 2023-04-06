@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1)) readnone
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %v2 = alloca ptr addrspace(1)
  %v3 = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %21, label %8
8:
  %9 = and i64 72057594037927935, 255
  %10 = or i64 2449958197289549824, %9
  %11 = getelementptr i8, ptr addrspace(1) null, i64 %10
  store ptr addrspace(1) %11, ptr %v1
  %12 = load ptr addrspace(1), ptr %v1
  %13 = call ptr addrspace(1) @_bal_tagged_clear_exact_any(ptr addrspace(1) %12), !dbg !9
  store ptr addrspace(1) %13, ptr %v2
  %14 = load ptr addrspace(1), ptr %v2
  %15 = addrspacecast ptr addrspace(1) %14 to ptr
  %16 = ptrtoint ptr %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 144115188075855872
  br i1 %18, label %23, label %37
19:
  %20 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %20), !dbg !14
  unreachable
21:
  %22 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %22), !dbg !8
  unreachable
23:
  %24 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %14), !dbg !10
  store i64 %24, ptr %1
  %25 = load i64, ptr %1
  store i64 %25, ptr %v3
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load i64, ptr %v3
  %31 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %30), !dbg !12
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %2
  %36 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !13
  store ptr addrspace(1) null, ptr %3
  ret void
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 1539), !dbg !7
  store ptr addrspace(1) %38, ptr %4
  br label %19
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-union/exact1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 17, scope: !5)
!10 = !DILocation(line: 6, column: 13, scope: !5)
!11 = !DILocation(line: 7, column: 15, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 0, scope: !5)
