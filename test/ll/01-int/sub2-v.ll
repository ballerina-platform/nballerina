@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
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
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8
  %21 = load i8*, i8** @_bal_stack_guard
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %43, label %23
23:
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775805), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775806), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775805), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -2), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !14
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775806), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !16
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !18
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775806), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !19
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !20
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !21
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !22
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !23
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !24
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775805), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !25
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775806), !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !26
  ret void
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %44)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/sub2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 1, scope: !5)
!9 = !DILocation(line: 5, column: 1, scope: !5)
!10 = !DILocation(line: 6, column: 1, scope: !5)
!11 = !DILocation(line: 8, column: 1, scope: !5)
!12 = !DILocation(line: 9, column: 1, scope: !5)
!13 = !DILocation(line: 10, column: 1, scope: !5)
!14 = !DILocation(line: 11, column: 1, scope: !5)
!15 = !DILocation(line: 13, column: 1, scope: !5)
!16 = !DILocation(line: 14, column: 1, scope: !5)
!17 = !DILocation(line: 15, column: 1, scope: !5)
!18 = !DILocation(line: 16, column: 1, scope: !5)
!19 = !DILocation(line: 17, column: 1, scope: !5)
!20 = !DILocation(line: 19, column: 1, scope: !5)
!21 = !DILocation(line: 20, column: 1, scope: !5)
!22 = !DILocation(line: 21, column: 1, scope: !5)
!23 = !DILocation(line: 22, column: 1, scope: !5)
!24 = !DILocation(line: 24, column: 1, scope: !5)
!25 = !DILocation(line: 25, column: 1, scope: !5)
!26 = !DILocation(line: 26, column: 1, scope: !5)
