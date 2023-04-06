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
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %33, label %8
8:
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = zext i1 1 to i64
  %14 = or i64 %13, 72057594037927936
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  %16 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %12, i64 0, i64 0
  store ptr addrspace(1) %15, ptr addrspace(1) %16
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %17
  %18 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %19 = getelementptr i8, ptr addrspace(1) %18, i64 864691128455135236
  store ptr addrspace(1) %19, ptr %1
  %20 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %20), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = zext i1 0 to i64
  %26 = or i64 %25, 72057594037927936
  %27 = getelementptr i8, ptr addrspace(1) null, i64 %26
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %3
  %32 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %32), !dbg !12
  store ptr addrspace(1) null, ptr %4
  ret void
33:
  %34 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %34), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-const/02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 15, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 15, scope: !5)
!12 = !DILocation(line: 9, column: 4, scope: !5)
