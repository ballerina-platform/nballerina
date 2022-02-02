@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %b = alloca i64
  %b1 = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %16, label %6
6:
  store i64 1, i64* %b
  %7 = load i64, i64* %b
  store i64 %7, i64* %b1
  %8 = load i64, i64* %b1
  store i64 %8, i64* %b
  %9 = load i64, i64* %b1
  %10 = load i64, i64* %b
  %11 = icmp eq i64 %9, %10
  store i1 %11, i1* %1
  %12 = load i1, i1* %1, !dbg !8
  %13 = zext i1 %12 to i64, !dbg !8
  %14 = or i64 %13, 72057594037927936, !dbg !8
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  ret void
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 66820), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/enumbyte-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 261, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 265, column: 4, scope: !5)
