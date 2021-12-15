@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %19, label %12
12:
  call void @_B_toNil(i1 1), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  call void @_B_toNil(i1 0), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !11
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i1 0, i1* %1
  %15 = load i1, i1* %1, !dbg !12
  call void @_B_toNil(i1 %15), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !12
  call void @_B_toNil(i1 0), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  call void @_B_toNil(i1 1), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !14
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i1 1, i1* %5
  %18 = load i1, i1* %5, !dbg !15
  call void @_B_toNil(i1 %18), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
define internal void @_B_toNil(i1 %0) !dbg !7 {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  store i1 %0, i1* %b
  %7 = load i1, i1* %b, !dbg !17
  %8 = zext i1 %7 to i64, !dbg !17
  %9 = or i64 %8, 72057594037927936, !dbg !17
  %10 = getelementptr i8, i8 addrspace(1)* null, i64 %9, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !17
  ret void
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-nil/rel-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"toNil", linkageName:"_B_toNil", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 10, scope: !5)
!11 = !DILocation(line: 4, column: 24, scope: !5)
!12 = !DILocation(line: 4, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 10, scope: !5)
!14 = !DILocation(line: 8, column: 26, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 14, column: 4, scope: !7)
