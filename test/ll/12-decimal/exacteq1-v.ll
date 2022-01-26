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
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %41, label %13
13:
  %14 = zext i1 1 to i64, !dbg !8
  %15 = or i64 %14, 72057594037927936, !dbg !8
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %17 = zext i1 1 to i64, !dbg !9
  %18 = or i64 %17, 72057594037927936, !dbg !9
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %20 = zext i1 1 to i64, !dbg !10
  %21 = or i64 %20, 72057594037927936, !dbg !10
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %23 = zext i1 1 to i64, !dbg !11
  %24 = or i64 %23, 72057594037927936, !dbg !11
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %26 = zext i1 0 to i64, !dbg !12
  %27 = or i64 %26, 72057594037927936, !dbg !12
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  %29 = zext i1 0 to i64, !dbg !13
  %30 = or i64 %29, 72057594037927936, !dbg !13
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  %32 = zext i1 0 to i64, !dbg !14
  %33 = or i64 %32, 72057594037927936, !dbg !14
  %34 = getelementptr i8, i8 addrspace(1)* null, i64 %33, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !14
  %35 = zext i1 0 to i64, !dbg !15
  %36 = or i64 %35, 72057594037927936, !dbg !15
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  %38 = zext i1 1 to i64, !dbg !16
  %39 = or i64 %38, 72057594037927936, !dbg !16
  %40 = getelementptr i8, i8 addrspace(1)* null, i64 %39, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !16
  ret void
41:
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %42)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/exacteq1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 4, scope: !5)
!9 = !DILocation(line: 4, column: 4, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 10, column: 4, scope: !5)
!16 = !DILocation(line: 11, column: 4, scope: !5)
