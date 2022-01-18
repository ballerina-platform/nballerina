@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %59, label %22
22:
  store i1 1, i1* %1
  %23 = load i1, i1* %1, !dbg !8
  %24 = zext i1 %23 to i64, !dbg !8
  %25 = or i64 %24, 72057594037927936, !dbg !8
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  store i1 1, i1* %3
  %27 = load i1, i1* %3, !dbg !9
  %28 = zext i1 %27 to i64, !dbg !9
  %29 = or i64 %28, 72057594037927936, !dbg !9
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  store i1 1, i1* %5
  %31 = load i1, i1* %5, !dbg !10
  %32 = zext i1 %31 to i64, !dbg !10
  %33 = or i64 %32, 72057594037927936, !dbg !10
  %34 = getelementptr i8, i8 addrspace(1)* null, i64 %33, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  store i1 1, i1* %7
  %35 = load i1, i1* %7, !dbg !11
  %36 = zext i1 %35 to i64, !dbg !11
  %37 = or i64 %36, 72057594037927936, !dbg !11
  %38 = getelementptr i8, i8 addrspace(1)* null, i64 %37, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  store i1 0, i1* %9
  %39 = load i1, i1* %9, !dbg !12
  %40 = zext i1 %39 to i64, !dbg !12
  %41 = or i64 %40, 72057594037927936, !dbg !12
  %42 = getelementptr i8, i8 addrspace(1)* null, i64 %41, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  store i1 0, i1* %11
  %43 = load i1, i1* %11, !dbg !13
  %44 = zext i1 %43 to i64, !dbg !13
  %45 = or i64 %44, 72057594037927936, !dbg !13
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  store i1 0, i1* %13
  %47 = load i1, i1* %13, !dbg !14
  %48 = zext i1 %47 to i64, !dbg !14
  %49 = or i64 %48, 72057594037927936, !dbg !14
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  store i1 0, i1* %15
  %51 = load i1, i1* %15, !dbg !15
  %52 = zext i1 %51 to i64, !dbg !15
  %53 = or i64 %52, 72057594037927936, !dbg !15
  %54 = getelementptr i8, i8 addrspace(1)* null, i64 %53, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  store i1 1, i1* %17
  %55 = load i1, i1* %17, !dbg !16
  %56 = zext i1 %55 to i64, !dbg !16
  %57 = or i64 %56, 72057594037927936, !dbg !16
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !16
  ret void
59:
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %60)
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
