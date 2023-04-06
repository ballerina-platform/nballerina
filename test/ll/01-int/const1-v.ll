@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %47, label %10
10:
  %11 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %12 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 3
  %13 = load ptr addrspace(1), ptr addrspace(1) %12, align 8
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = and i64 72057594037927935, 42
  %16 = or i64 2449958197289549824, %15
  %17 = getelementptr i8, ptr addrspace(1) null, i64 %16
  %18 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %14, i64 0, i64 0
  store ptr addrspace(1) %17, ptr addrspace(1) %18
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %11, i64 0, i32 1
  store i64 1, ptr addrspace(1) %19
  %20 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %21 = getelementptr i8, ptr addrspace(1) %20, i64 864691128455135236
  store ptr addrspace(1) %21, ptr %1
  %22 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %22), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = and i64 72057594037927935, -1
  %28 = or i64 2449958197289549824, %27
  %29 = getelementptr i8, ptr addrspace(1) null, i64 %28
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %3
  %34 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %35 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 3
  %37 = load ptr addrspace(1), ptr addrspace(1) %36, align 8
  %38 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %39 = and i64 72057594037927935, 0
  %40 = or i64 2449958197289549824, %39
  %41 = getelementptr i8, ptr addrspace(1) null, i64 %40
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %38, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %35, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %5
  %46 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !14
  store ptr addrspace(1) null, ptr %6
  ret void
47:
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %48), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/const1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 13, scope: !5)
!10 = !DILocation(line: 5, column: 2, scope: !5)
!11 = !DILocation(line: 6, column: 13, scope: !5)
!12 = !DILocation(line: 6, column: 2, scope: !5)
!13 = !DILocation(line: 7, column: 13, scope: !5)
!14 = !DILocation(line: 7, column: 2, scope: !5)
