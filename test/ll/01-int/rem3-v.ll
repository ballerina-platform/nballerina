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
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8
  %32 = load i8*, i8** @_bal_stack_guard
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %65, label %34
34:
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !14
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !16
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -6), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !18
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !19
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %47), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !20
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !21
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !22
  %50 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !23
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !24
  %52 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %52), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !25
  %53 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !26
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !27
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6), !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !28
  %56 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %56), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !29
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !30
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !31
  %59 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -6), !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %59), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !32
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !33
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !34
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !34
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %62), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !35
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !36
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !37
  ret void
65:
  %66 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %66)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/rem3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 4, scope: !5)
!13 = !DILocation(line: 11, column: 4, scope: !5)
!14 = !DILocation(line: 12, column: 4, scope: !5)
!15 = !DILocation(line: 13, column: 4, scope: !5)
!16 = !DILocation(line: 14, column: 4, scope: !5)
!17 = !DILocation(line: 15, column: 4, scope: !5)
!18 = !DILocation(line: 17, column: 4, scope: !5)
!19 = !DILocation(line: 18, column: 4, scope: !5)
!20 = !DILocation(line: 19, column: 4, scope: !5)
!21 = !DILocation(line: 20, column: 4, scope: !5)
!22 = !DILocation(line: 21, column: 4, scope: !5)
!23 = !DILocation(line: 23, column: 4, scope: !5)
!24 = !DILocation(line: 24, column: 4, scope: !5)
!25 = !DILocation(line: 25, column: 4, scope: !5)
!26 = !DILocation(line: 26, column: 4, scope: !5)
!27 = !DILocation(line: 27, column: 4, scope: !5)
!28 = !DILocation(line: 29, column: 4, scope: !5)
!29 = !DILocation(line: 30, column: 4, scope: !5)
!30 = !DILocation(line: 31, column: 4, scope: !5)
!31 = !DILocation(line: 32, column: 4, scope: !5)
!32 = !DILocation(line: 33, column: 4, scope: !5)
!33 = !DILocation(line: 35, column: 4, scope: !5)
!34 = !DILocation(line: 36, column: 4, scope: !5)
!35 = !DILocation(line: 37, column: 4, scope: !5)
!36 = !DILocation(line: 38, column: 4, scope: !5)
!37 = !DILocation(line: 39, column: 4, scope: !5)
