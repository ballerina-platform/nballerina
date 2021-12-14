@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %s = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %43, label %20
20:
  store i64 42, i64* %i
  %21 = load i64, i64* %i, !dbg !8
  %22 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 %21), !dbg !8
  store i8 addrspace(1)* %22, i8 addrspace(1)** %1, !dbg !8
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %23, i8 addrspace(1)** %s
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %26 = icmp eq i8 addrspace(1)* %25, getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630860594)
  store i1 %26, i1* %3
  %27 = load i1, i1* %3, !dbg !10
  %28 = zext i1 %27 to i64, !dbg !10
  %29 = or i64 %28, 72057594037927936, !dbg !10
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !10
  %31 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 0), !dbg !11
  store i8 addrspace(1)* %31, i8 addrspace(1)** %5, !dbg !11
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !12
  %33 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 -1), !dbg !13
  store i8 addrspace(1)* %33, i8 addrspace(1)** %7, !dbg !13
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !14
  %35 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 255), !dbg !15
  store i8 addrspace(1)* %35, i8 addrspace(1)** %9, !dbg !15
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !16
  %37 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 -170), !dbg !17
  store i8 addrspace(1)* %37, i8 addrspace(1)** %11, !dbg !17
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !18
  %39 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 9223372036854775807), !dbg !19
  store i8 addrspace(1)* %39, i8 addrspace(1)** %13, !dbg !19
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !20
  %41 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 -9223372036854775808), !dbg !21
  store i8 addrspace(1)* %41, i8 addrspace(1)** %15, !dbg !21
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !22
  ret void
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %44)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-int/tohex2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 17, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 17, scope: !5)
!12 = !DILocation(line: 10, column: 4, scope: !5)
!13 = !DILocation(line: 11, column: 20, scope: !5)
!14 = !DILocation(line: 11, column: 4, scope: !5)
!15 = !DILocation(line: 13, column: 20, scope: !5)
!16 = !DILocation(line: 13, column: 4, scope: !5)
!17 = !DILocation(line: 14, column: 23, scope: !5)
!18 = !DILocation(line: 14, column: 4, scope: !5)
!19 = !DILocation(line: 16, column: 35, scope: !5)
!20 = !DILocation(line: 16, column: 4, scope: !5)
!21 = !DILocation(line: 17, column: 42, scope: !5)
!22 = !DILocation(line: 17, column: 4, scope: !5)
