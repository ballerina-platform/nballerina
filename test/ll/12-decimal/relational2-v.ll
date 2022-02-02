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
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %29, label %10
10:
  %11 = zext i1 1 to i64, !dbg !8
  %12 = or i64 %11, 72057594037927936, !dbg !8
  %13 = getelementptr i8, i8 addrspace(1)* null, i64 %12, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %14 = zext i1 0 to i64, !dbg !9
  %15 = or i64 %14, 72057594037927936, !dbg !9
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %17 = zext i1 0 to i64, !dbg !10
  %18 = or i64 %17, 72057594037927936, !dbg !10
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %20 = zext i1 1 to i64, !dbg !11
  %21 = or i64 %20, 72057594037927936, !dbg !11
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %23 = zext i1 1 to i64, !dbg !12
  %24 = or i64 %23, 72057594037927936, !dbg !12
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  %26 = zext i1 1 to i64, !dbg !13
  %27 = or i64 %26, 72057594037927936, !dbg !13
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  ret void
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/relational2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
