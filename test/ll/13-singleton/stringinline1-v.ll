@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %xy = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %xyz = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901080), i8 addrspace(1)** %xy
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %xy, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %7), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %xy
  store i8 addrspace(1)* %8, i8 addrspace(1)** %xyz
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901082), i8 addrspace(1)** %xyz
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %xyz, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/stringinline1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
