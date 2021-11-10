@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %25, label %9
9:
  %10 = zext i1 1 to i64, !dbg !8
  %11 = or i64 %10, 72057594037927936, !dbg !8
  %12 = getelementptr i8, i8 addrspace(1)* null, i64 %11, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %13 = zext i1 1 to i64, !dbg !9
  %14 = or i64 %13, 72057594037927936, !dbg !9
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %16 = zext i1 1 to i64, !dbg !10
  %17 = or i64 %16, 72057594037927936, !dbg !10
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %19 = zext i1 1 to i64, !dbg !11
  %20 = or i64 %19, 72057594037927936, !dbg !11
  %21 = getelementptr i8, i8 addrspace(1)* null, i64 %20, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %22 = zext i1 1 to i64, !dbg !12
  %23 = or i64 %22, 72057594037927936, !dbg !12
  %24 = getelementptr i8, i8 addrspace(1)* null, i64 %23, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  ret void
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-null/const1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
