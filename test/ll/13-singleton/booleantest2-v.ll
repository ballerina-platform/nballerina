@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i1
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %45, label %14
14:
  store i1 1, i1* %v
  %15 = load i1, i1* %v
  %16 = icmp eq i1 %15, 1
  store i1 %16, i1* %1
  %17 = load i1, i1* %1, !dbg !8
  %18 = zext i1 %17 to i64, !dbg !8
  %19 = or i64 %18, 72057594037927936, !dbg !8
  %20 = getelementptr i8, i8 addrspace(1)* null, i64 %19, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %21 = load i1, i1* %v
  %22 = icmp eq i1 %21, 0
  store i1 %22, i1* %3
  %23 = load i1, i1* %3, !dbg !9
  %24 = zext i1 %23 to i64, !dbg !9
  %25 = or i64 %24, 72057594037927936, !dbg !9
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %27 = zext i1 1 to i64, !dbg !10
  %28 = or i64 %27, 72057594037927936, !dbg !10
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !10
  store i1 0, i1* %v
  %30 = load i1, i1* %v
  %31 = icmp eq i1 %30, 1
  store i1 %31, i1* %6
  %32 = load i1, i1* %6, !dbg !11
  %33 = zext i1 %32 to i64, !dbg !11
  %34 = or i64 %33, 72057594037927936, !dbg !11
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !11
  %36 = load i1, i1* %v
  %37 = icmp eq i1 %36, 0
  store i1 %37, i1* %8
  %38 = load i1, i1* %8, !dbg !12
  %39 = zext i1 %38 to i64, !dbg !12
  %40 = or i64 %39, 72057594037927936, !dbg !12
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !12
  %42 = zext i1 1 to i64, !dbg !13
  %43 = or i64 %42, 72057594037927936, !dbg !13
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !13
  ret void
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %46)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/booleantest2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 13, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 4, scope: !5)
!13 = !DILocation(line: 15, column: 4, scope: !5)
