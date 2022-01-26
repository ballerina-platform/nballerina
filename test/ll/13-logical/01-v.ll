@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %27, label %10
10:
  %11 = call i1 @_B04rootf(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i1 1), !dbg !10
  store i1 %11, i1* %1, !dbg !10
  %12 = load i1, i1* %1, !dbg !11
  %13 = zext i1 %12 to i64, !dbg !11
  %14 = or i64 %13, 72057594037927936, !dbg !11
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %16 = zext i1 0 to i64, !dbg !12
  %17 = or i64 %16, 72057594037927936, !dbg !12
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  %19 = call i1 @_B04rootf(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091), i1 0), !dbg !13
  store i1 %19, i1* %4, !dbg !13
  %20 = load i1, i1* %4, !dbg !14
  %21 = zext i1 %20 to i64, !dbg !14
  %22 = or i64 %21, 72057594037927936, !dbg !14
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %24 = zext i1 1 to i64, !dbg !15
  %25 = or i64 %24, 72057594037927936, !dbg !15
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  ret void
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
}
define i1 @_B04rootf(i8 addrspace(1)* %0, i1 %1) !dbg !7 {
  %s = alloca i8 addrspace(1)*
  %b = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %10, label %7
7:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  store i1 %1, i1* %b
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %8), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !17
  %9 = load i1, i1* %b
  ret i1 %9
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/01-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B04rootf", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 23, scope: !5)
!11 = !DILocation(line: 3, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 24, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 11, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 15, column: 4, scope: !7)
