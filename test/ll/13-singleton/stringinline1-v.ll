@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %xy = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %xyz = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %30, label %8
8:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261400), ptr %xy
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = load ptr addrspace(1), ptr %xy
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %12, i64 0, i64 0
  store ptr addrspace(1) %13, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %18), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %19 = load ptr addrspace(1), ptr %xy
  store ptr addrspace(1) %19, ptr %xyz
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261402), ptr %xyz
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = load ptr addrspace(1), ptr %xyz
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %24, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %3
  %29 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %29), !dbg !12
  store ptr addrspace(1) null, ptr %4
  ret void
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/stringinline1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 4, scope: !5)
!11 = !DILocation(line: 7, column: 15, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
