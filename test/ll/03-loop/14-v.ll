@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %i.1 = alloca i64
  %i.2 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %34, label %9
9:
  store i64 6, i64* %i
  br label %10
10:
  %11 = load i64, i64* %i
  %12 = icmp slt i64 %11, 10
  store i1 %12, i1* %1
  %13 = load i1, i1* %1
  br i1 %13, label %18, label %14
14:
  %15 = zext i1 0 to i64, !dbg !8
  %16 = or i64 %15, 72057594037927936, !dbg !8
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  ret void
18:
  %19 = load i64, i64* %i, !dbg !9
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %19), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %21 = load i64, i64* %i
  %22 = icmp eq i64 %21, 6
  store i1 %22, i1* %3
  %23 = load i1, i1* %3
  br i1 %23, label %24, label %29
24:
  %25 = load i64, i64* %i
  store i64 %25, i64* %i.1
  br label %26
26:
  %27 = load i64, i64* %i
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %i
  br label %10
29:
  %30 = load i64, i64* %i
  store i64 %30, i64* %i.2
  %31 = zext i1 1 to i64, !dbg !10
  %32 = or i64 %31, 72057594037927936, !dbg !10
  %33 = getelementptr i8, i8 addrspace(1)* null, i64 %32, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !10
  ret void
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-loop/14-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 14, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 8, scope: !5)
!10 = !DILocation(line: 11, column: 8, scope: !5)
