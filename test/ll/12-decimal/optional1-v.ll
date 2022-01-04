@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [4 x i8] c"2.3\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca i8 addrspace(1)*
  %1 = alloca i1
  %d1.1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %19, label %7
7:
  store i8 addrspace(1)* null, i8 addrspace(1)** %d1
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %9 = addrspacecast i8 addrspace(1)* %8 to i8*
  %10 = ptrtoint i8* %9 to i64
  %11 = and i64 %10, 2233785415175766016
  %12 = icmp eq i64 %11, 0
  store i1 %12, i1* %1
  %13 = load i1, i1* %1
  br i1 %13, label %14, label %16
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  store i8 addrspace(1)* %15, i8 addrspace(1)** %d1.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621228910)), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  br label %16
16:
  %17 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %17, i8 addrspace(1)** %d1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %d1, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/optional1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 8, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
