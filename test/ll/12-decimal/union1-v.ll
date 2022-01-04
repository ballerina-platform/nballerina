@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [4 x i8] c"1.2\00", align 8
@.dec1 = internal unnamed_addr constant [5 x i8] c"1.22\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %d3 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8
  %13 = load i8*, i8** @_bal_stack_guard
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %59, label %15
15:
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %16, i8 addrspace(1)** %d1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %d1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %19 = addrspacecast i8 addrspace(1)* %18 to i8*
  %20 = ptrtoint i8* %19 to i64
  %21 = and i64 %20, 2233785415175766016
  %22 = icmp eq i64 %21, 504403158265495552
  store i1 %22, i1* %2
  %23 = load i1, i1* %2, !dbg !9
  %24 = zext i1 %23 to i64, !dbg !9
  %25 = or i64 %24, 72057594037927936, !dbg !9
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  %27 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %27, i8 addrspace(1)** %d1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %d1, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !10
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %30 = addrspacecast i8 addrspace(1)* %29 to i8*
  %31 = ptrtoint i8* %30 to i64
  %32 = and i64 %31, 2233785415175766016
  %33 = icmp eq i64 %32, 648518346341351424
  store i1 %33, i1* %5
  %34 = load i1, i1* %5, !dbg !11
  %35 = zext i1 %34 to i64, !dbg !11
  %36 = or i64 %35, 72057594037927936, !dbg !11
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !11
  %38 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %38, i8 addrspace(1)** %d3
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %d3, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !12
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %d3
  %41 = addrspacecast i8 addrspace(1)* %40 to i8*
  %42 = ptrtoint i8* %41 to i64
  %43 = and i64 %42, 2233785415175766016
  %44 = icmp eq i64 %43, 648518346341351424
  store i1 %44, i1* %8
  %45 = load i1, i1* %8, !dbg !13
  %46 = zext i1 %45 to i64, !dbg !13
  %47 = or i64 %46, 72057594037927936, !dbg !13
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !13
  %49 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.2)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %d3
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %d3
  %51 = addrspacecast i8 addrspace(1)* %50 to i8*
  %52 = ptrtoint i8* %51 to i64
  %53 = and i64 %52, 2233785415175766016
  %54 = icmp eq i64 %53, 576460752303423488
  store i1 %54, i1* %10
  %55 = load i1, i1* %10, !dbg !14
  %56 = zext i1 %55 to i64, !dbg !14
  %57 = or i64 %56, 72057594037927936, !dbg !14
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !14
  ret void
59:
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %60)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/union1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
!9 = !DILocation(line: 5, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
!14 = !DILocation(line: 16, column: 4, scope: !5)
