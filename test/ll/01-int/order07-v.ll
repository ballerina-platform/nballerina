@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i1
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i1
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i1
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i1
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i1
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i1
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i1
  %50 = alloca i8 addrspace(1)*
  %51 = alloca i8
  %52 = load i8*, i8** @_bal_stack_guard
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %105, label %54
54:
  %55 = call i1 @_B_gt(i64 9223372036854775806, i64 9223372036854775806), !dbg !12
  store i1 %55, i1* %1, !dbg !12
  %56 = load i1, i1* %1, !dbg !13
  call void @_B_printBoolean(i1 %56), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  %57 = call i1 @_B_gt(i64 9223372036854775806, i64 1), !dbg !14
  store i1 %57, i1* %3, !dbg !14
  %58 = load i1, i1* %3, !dbg !15
  call void @_B_printBoolean(i1 %58), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !15
  %59 = call i1 @_B_gt(i64 9223372036854775806, i64 0), !dbg !16
  store i1 %59, i1* %5, !dbg !16
  %60 = load i1, i1* %5, !dbg !17
  call void @_B_printBoolean(i1 %60), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !17
  %61 = call i1 @_B_gt(i64 9223372036854775806, i64 -1), !dbg !18
  store i1 %61, i1* %7, !dbg !18
  %62 = load i1, i1* %7, !dbg !19
  call void @_B_printBoolean(i1 %62), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !19
  %63 = call i1 @_B_gt(i64 9223372036854775806, i64 -9223372036854775806), !dbg !20
  store i1 %63, i1* %9, !dbg !20
  %64 = load i1, i1* %9, !dbg !21
  call void @_B_printBoolean(i1 %64), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !21
  %65 = call i1 @_B_gt(i64 1, i64 9223372036854775806), !dbg !22
  store i1 %65, i1* %11, !dbg !22
  %66 = load i1, i1* %11, !dbg !23
  call void @_B_printBoolean(i1 %66), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !23
  %67 = call i1 @_B_gt(i64 1, i64 1), !dbg !24
  store i1 %67, i1* %13, !dbg !24
  %68 = load i1, i1* %13, !dbg !25
  call void @_B_printBoolean(i1 %68), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !25
  %69 = call i1 @_B_gt(i64 1, i64 0), !dbg !26
  store i1 %69, i1* %15, !dbg !26
  %70 = load i1, i1* %15, !dbg !27
  call void @_B_printBoolean(i1 %70), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !27
  %71 = call i1 @_B_gt(i64 1, i64 -1), !dbg !28
  store i1 %71, i1* %17, !dbg !28
  %72 = load i1, i1* %17, !dbg !29
  call void @_B_printBoolean(i1 %72), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !29
  %73 = call i1 @_B_gt(i64 1, i64 -9223372036854775806), !dbg !30
  store i1 %73, i1* %19, !dbg !30
  %74 = load i1, i1* %19, !dbg !31
  call void @_B_printBoolean(i1 %74), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !31
  %75 = call i1 @_B_gt(i64 0, i64 9223372036854775806), !dbg !32
  store i1 %75, i1* %21, !dbg !32
  %76 = load i1, i1* %21, !dbg !33
  call void @_B_printBoolean(i1 %76), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !33
  %77 = call i1 @_B_gt(i64 0, i64 1), !dbg !34
  store i1 %77, i1* %23, !dbg !34
  %78 = load i1, i1* %23, !dbg !35
  call void @_B_printBoolean(i1 %78), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !35
  %79 = call i1 @_B_gt(i64 0, i64 0), !dbg !36
  store i1 %79, i1* %25, !dbg !36
  %80 = load i1, i1* %25, !dbg !37
  call void @_B_printBoolean(i1 %80), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !37
  %81 = call i1 @_B_gt(i64 0, i64 -1), !dbg !38
  store i1 %81, i1* %27, !dbg !38
  %82 = load i1, i1* %27, !dbg !39
  call void @_B_printBoolean(i1 %82), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !39
  %83 = call i1 @_B_gt(i64 0, i64 -9223372036854775806), !dbg !40
  store i1 %83, i1* %29, !dbg !40
  %84 = load i1, i1* %29, !dbg !41
  call void @_B_printBoolean(i1 %84), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !41
  %85 = call i1 @_B_gt(i64 -1, i64 9223372036854775806), !dbg !42
  store i1 %85, i1* %31, !dbg !42
  %86 = load i1, i1* %31, !dbg !43
  call void @_B_printBoolean(i1 %86), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !43
  %87 = call i1 @_B_gt(i64 -1, i64 1), !dbg !44
  store i1 %87, i1* %33, !dbg !44
  %88 = load i1, i1* %33, !dbg !45
  call void @_B_printBoolean(i1 %88), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !45
  %89 = call i1 @_B_gt(i64 -1, i64 0), !dbg !46
  store i1 %89, i1* %35, !dbg !46
  %90 = load i1, i1* %35, !dbg !47
  call void @_B_printBoolean(i1 %90), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !47
  %91 = call i1 @_B_gt(i64 -1, i64 -1), !dbg !48
  store i1 %91, i1* %37, !dbg !48
  %92 = load i1, i1* %37, !dbg !49
  call void @_B_printBoolean(i1 %92), !dbg !49
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !49
  %93 = call i1 @_B_gt(i64 -1, i64 -9223372036854775806), !dbg !50
  store i1 %93, i1* %39, !dbg !50
  %94 = load i1, i1* %39, !dbg !51
  call void @_B_printBoolean(i1 %94), !dbg !51
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !51
  %95 = call i1 @_B_gt(i64 -9223372036854775806, i64 9223372036854775806), !dbg !52
  store i1 %95, i1* %41, !dbg !52
  %96 = load i1, i1* %41, !dbg !53
  call void @_B_printBoolean(i1 %96), !dbg !53
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !53
  %97 = call i1 @_B_gt(i64 -9223372036854775806, i64 1), !dbg !54
  store i1 %97, i1* %43, !dbg !54
  %98 = load i1, i1* %43, !dbg !55
  call void @_B_printBoolean(i1 %98), !dbg !55
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !55
  %99 = call i1 @_B_gt(i64 -9223372036854775806, i64 0), !dbg !56
  store i1 %99, i1* %45, !dbg !56
  %100 = load i1, i1* %45, !dbg !57
  call void @_B_printBoolean(i1 %100), !dbg !57
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !57
  %101 = call i1 @_B_gt(i64 -9223372036854775806, i64 -1), !dbg !58
  store i1 %101, i1* %47, !dbg !58
  %102 = load i1, i1* %47, !dbg !59
  call void @_B_printBoolean(i1 %102), !dbg !59
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !59
  %103 = call i1 @_B_gt(i64 -9223372036854775806, i64 -9223372036854775806), !dbg !60
  store i1 %103, i1* %49, !dbg !60
  %104 = load i1, i1* %49, !dbg !61
  call void @_B_printBoolean(i1 %104), !dbg !61
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !61
  ret void
105:
  %106 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %106)
  unreachable
}
define internal i1 @_B_gt(i64 %0, i64 %1) !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %8 = load i64, i64* %a
  %9 = load i64, i64* %b
  %10 = icmp sgt i64 %8, %9
  store i1 %10, i1* %3
  %11 = load i1, i1* %3
  ret i1 %11
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220), !dbg !62
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define internal void @_B_printBoolean(i1 %0) !dbg !9 {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !64
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !64
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !64
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !65
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !65
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !65
  br label %13
13:
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 10244), !dbg !63
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/order07-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"gt", linkageName:"_B_gt", scope: !1, file: !1, line: 36, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 40, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 17, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 17, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 7, column: 17, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 17, scope: !5)
!19 = !DILocation(line: 8, column: 4, scope: !5)
!20 = !DILocation(line: 9, column: 17, scope: !5)
!21 = !DILocation(line: 9, column: 4, scope: !5)
!22 = !DILocation(line: 11, column: 17, scope: !5)
!23 = !DILocation(line: 11, column: 4, scope: !5)
!24 = !DILocation(line: 12, column: 17, scope: !5)
!25 = !DILocation(line: 12, column: 4, scope: !5)
!26 = !DILocation(line: 13, column: 17, scope: !5)
!27 = !DILocation(line: 13, column: 4, scope: !5)
!28 = !DILocation(line: 14, column: 17, scope: !5)
!29 = !DILocation(line: 14, column: 4, scope: !5)
!30 = !DILocation(line: 15, column: 17, scope: !5)
!31 = !DILocation(line: 15, column: 4, scope: !5)
!32 = !DILocation(line: 17, column: 17, scope: !5)
!33 = !DILocation(line: 17, column: 4, scope: !5)
!34 = !DILocation(line: 18, column: 17, scope: !5)
!35 = !DILocation(line: 18, column: 4, scope: !5)
!36 = !DILocation(line: 19, column: 17, scope: !5)
!37 = !DILocation(line: 19, column: 4, scope: !5)
!38 = !DILocation(line: 20, column: 17, scope: !5)
!39 = !DILocation(line: 20, column: 4, scope: !5)
!40 = !DILocation(line: 21, column: 17, scope: !5)
!41 = !DILocation(line: 21, column: 4, scope: !5)
!42 = !DILocation(line: 23, column: 17, scope: !5)
!43 = !DILocation(line: 23, column: 4, scope: !5)
!44 = !DILocation(line: 24, column: 17, scope: !5)
!45 = !DILocation(line: 24, column: 4, scope: !5)
!46 = !DILocation(line: 25, column: 17, scope: !5)
!47 = !DILocation(line: 25, column: 4, scope: !5)
!48 = !DILocation(line: 26, column: 17, scope: !5)
!49 = !DILocation(line: 26, column: 4, scope: !5)
!50 = !DILocation(line: 27, column: 17, scope: !5)
!51 = !DILocation(line: 27, column: 4, scope: !5)
!52 = !DILocation(line: 29, column: 17, scope: !5)
!53 = !DILocation(line: 29, column: 4, scope: !5)
!54 = !DILocation(line: 30, column: 17, scope: !5)
!55 = !DILocation(line: 30, column: 4, scope: !5)
!56 = !DILocation(line: 31, column: 17, scope: !5)
!57 = !DILocation(line: 31, column: 4, scope: !5)
!58 = !DILocation(line: 32, column: 17, scope: !5)
!59 = !DILocation(line: 32, column: 4, scope: !5)
!60 = !DILocation(line: 33, column: 17, scope: !5)
!61 = !DILocation(line: 33, column: 4, scope: !5)
!62 = !DILocation(line: 0, column: 0, scope: !7)
!63 = !DILocation(line: 0, column: 0, scope: !9)
!64 = !DILocation(line: 42, column: 8, scope: !9)
!65 = !DILocation(line: 45, column: 8, scope: !9)
