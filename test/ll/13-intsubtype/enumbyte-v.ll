@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %b = alloca i64
  %b1 = alloca i64
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %26, label %7
7:
  store i64 1, ptr %b
  %8 = load i64, ptr %b
  store i64 %8, ptr %b1
  %9 = load i64, ptr %b1
  store i64 %9, ptr %b
  %10 = load i64, ptr %b1
  %11 = load i64, ptr %b
  %12 = icmp eq i64 %10, %11
  store i1 %12, ptr %1
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %14 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 3
  %15 = load ptr addrspace(1), ptr addrspace(1) %14, align 8
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = load i1, ptr %1
  %18 = zext i1 %17 to i64
  %19 = or i64 %18, 72057594037927936
  %20 = getelementptr i8, ptr addrspace(1) null, i64 %19
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %16, i64 0, i64 0
  store ptr addrspace(1) %20, ptr addrspace(1) %21
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %13, i64 0, i32 1
  store i64 1, ptr addrspace(1) %22
  %23 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 864691128455135236
  store ptr addrspace(1) %24, ptr %2
  %25 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %25), !dbg !10
  store ptr addrspace(1) null, ptr %3
  ret void
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 66820), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %27), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/enumbyte-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 261, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 261, column: 16, scope: !5)
!9 = !DILocation(line: 265, column: 15, scope: !5)
!10 = !DILocation(line: 265, column: 4, scope: !5)
