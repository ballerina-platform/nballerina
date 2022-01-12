@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %b1 = alloca i1
  %b2 = alloca i1
  %1 = alloca i8 addrspace(1)*
  %b3 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %17, label %6
6:
  store i1 1, i1* %b1
  %7 = load i1, i1* %b1
  store i1 %7, i1* %b2
  %8 = load i1, i1* %b2, !dbg !8
  %9 = zext i1 %8 to i64, !dbg !8
  %10 = or i64 %9, 72057594037927936, !dbg !8
  %11 = getelementptr i8, i8 addrspace(1)* null, i64 %10, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %11), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %12 = load i1, i1* %b1
  store i1 %12, i1* %b3
  %13 = load i1, i1* %b3, !dbg !9
  %14 = zext i1 %13 to i64, !dbg !9
  %15 = or i64 %14, 72057594037927936, !dbg !9
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  ret void
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if13-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 8, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
