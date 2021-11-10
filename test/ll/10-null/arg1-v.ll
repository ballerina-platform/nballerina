@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %n = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* null, i8 addrspace(1)** %n
  %7 = call i8 addrspace(1)* @_B_explode(i8 addrspace(1)* null), !dbg !10
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1, !dbg !10
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %8, i8 addrspace(1)** %e
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %e, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal i8 addrspace(1)* @_B_explode(i8 addrspace(1)* %0) !dbg !7 {
  %n = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %n
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  ret i8 addrspace(1)* %6
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-null/arg1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"explode", linkageName:"_B_explode", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 8, column: 19, scope: !5)
!11 = !DILocation(line: 9, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
