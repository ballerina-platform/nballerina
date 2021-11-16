@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"Intersect!\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %s1 = alloca i8 addrspace(1)*
  %s2 = alloca i8 addrspace(1)*
  %s3 = alloca i8 addrspace(1)*
  %s4 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %10, label %5
5:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %s1
  %6 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  store i8 addrspace(1)* %6, i8 addrspace(1)** %s2
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  store i8 addrspace(1)* %7, i8 addrspace(1)** %s3
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %s3
  store i8 addrspace(1)* %8, i8 addrspace(1)** %s4
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %s4, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-intersect/basic1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 4, scope: !5)
