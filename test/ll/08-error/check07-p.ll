@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 19, i16 19, [20 x i8] c"failed successfully\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  %7 = call i8 addrspace(1)* @_B_newError(), !dbg !10
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1, !dbg !10
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %8, i8 addrspace(1)** %2
  br label %9
9:
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
define internal i8 addrspace(1)* @_B_newError() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i64 6), !dbg !11
  store i8 addrspace(1)* %6, i8 addrspace(1)** %1, !dbg !11
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  ret i8 addrspace(1)* %7
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/08-error/check07-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"newError", linkageName:"_B_newError", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 15, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
