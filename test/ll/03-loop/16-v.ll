@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i1
  %i.1 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %29, label %8
8:
  store i64 6, i64* %i
  br label %9
9:
  %10 = load i64, i64* %i
  %11 = icmp slt i64 %10, 10
  store i1 %11, i1* %1
  %12 = load i1, i1* %1
  br i1 %12, label %17, label %13
13:
  %14 = zext i1 1 to i64, !dbg !8
  %15 = or i64 %14, 72057594037927936, !dbg !8
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  ret void
17:
  %18 = load i64, i64* %i
  %19 = icmp eq i64 %18, 8
  store i1 %19, i1* %2
  %20 = load i1, i1* %2
  br i1 %20, label %21, label %23
21:
  %22 = load i64, i64* %i
  store i64 %22, i64* %i.1
  br label %13
23:
  %24 = load i64, i64* %i, !dbg !9
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %24), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  br label %26
26:
  %27 = load i64, i64* %i
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %i
  br label %9
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-loop/16-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 8, scope: !5)
