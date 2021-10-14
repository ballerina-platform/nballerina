@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %18, label %6
6:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621624947), i8 addrspace(1)** %x
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %8 = addrspacecast i8 addrspace(1)* %7 to i8*
  %9 = ptrtoint i8* %8 to i64
  %10 = and i64 %9, 2233785415175766016
  %11 = icmp eq i64 %10, 720575940379279360
  store i1 %11, i1* %1
  %12 = load i1, i1* %1
  br i1 %12, label %13, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %14, i8 addrspace(1)** %x.1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x.1
  store i8 addrspace(1)* %15, i8 addrspace(1)** %s
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  br label %17
17:
  ret void
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-unused/unused8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 8, scope: !5)
