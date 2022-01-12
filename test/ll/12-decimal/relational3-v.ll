@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"5\00", align 8
@.dec1 = internal unnamed_addr constant [2 x i8] c"3\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_decimal_cmp(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %32, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = zext i1 1 to i64, !dbg !8
  %13 = or i64 %12, 72057594037927936, !dbg !8
  %14 = getelementptr i8, i8 addrspace(1)* null, i64 %13, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %15 = zext i1 0 to i64, !dbg !9
  %16 = or i64 %15, 72057594037927936, !dbg !9
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %18 = zext i1 1 to i64, !dbg !10
  %19 = or i64 %18, 72057594037927936, !dbg !10
  %20 = getelementptr i8, i8 addrspace(1)* null, i64 %19, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %21 = zext i1 0 to i64, !dbg !11
  %22 = or i64 %21, 72057594037927936, !dbg !11
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %25 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  %26 = call i64 @_bal_decimal_cmp(i8 addrspace(1)* %24, i8 addrspace(1)* %25)
  %27 = icmp sge i64 %26, 0
  store i1 %27, i1* %5
  %28 = load i1, i1* %5, !dbg !12
  %29 = zext i1 %28 to i64, !dbg !12
  %30 = or i64 %29, 72057594037927936, !dbg !12
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !12
  ret void
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/relational3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
!9 = !DILocation(line: 5, column: 4, scope: !5)
!10 = !DILocation(line: 6, column: 4, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 4, scope: !5)
