@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i64
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i64
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i64
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i8
  %40 = load i8*, i8** @_bal_stack_guard
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %100, label %42
42:
  %43 = call i64 @_B_sub(i64 9223372036854775806, i64 9223372036854775806), !dbg !10
  store i64 %43, i64* %1, !dbg !10
  %44 = load i64, i64* %1, !dbg !11
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %44), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %46 = call i64 @_B_sub(i64 1, i64 9223372036854775806), !dbg !12
  store i64 %46, i64* %3, !dbg !12
  %47 = load i64, i64* %3, !dbg !13
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %47), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %49 = call i64 @_B_sub(i64 0, i64 9223372036854775806), !dbg !14
  store i64 %49, i64* %5, !dbg !14
  %50 = load i64, i64* %5, !dbg !15
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %50), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %52 = call i64 @_B_sub(i64 9223372036854775806, i64 1), !dbg !16
  store i64 %52, i64* %7, !dbg !16
  %53 = load i64, i64* %7, !dbg !17
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %53), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %55 = call i64 @_B_sub(i64 1, i64 1), !dbg !18
  store i64 %55, i64* %9, !dbg !18
  %56 = load i64, i64* %9, !dbg !19
  %57 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %56), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %57), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %58 = call i64 @_B_sub(i64 0, i64 1), !dbg !20
  store i64 %58, i64* %11, !dbg !20
  %59 = load i64, i64* %11, !dbg !21
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %59), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %61 = call i64 @_B_sub(i64 -1, i64 -1), !dbg !22
  store i64 %61, i64* %13, !dbg !22
  %62 = load i64, i64* %13, !dbg !23
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %64 = call i64 @_B_sub(i64 9223372036854775806, i64 0), !dbg !24
  store i64 %64, i64* %15, !dbg !24
  %65 = load i64, i64* %15, !dbg !25
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %65), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %66), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %67 = call i64 @_B_sub(i64 1, i64 0), !dbg !26
  store i64 %67, i64* %17, !dbg !26
  %68 = load i64, i64* %17, !dbg !27
  %69 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %68), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %69), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %70 = call i64 @_B_sub(i64 0, i64 0), !dbg !28
  store i64 %70, i64* %19, !dbg !28
  %71 = load i64, i64* %19, !dbg !29
  %72 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %71), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  %73 = call i64 @_B_sub(i64 -1, i64 0), !dbg !30
  store i64 %73, i64* %21, !dbg !30
  %74 = load i64, i64* %21, !dbg !31
  %75 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %74), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %75), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !31
  %76 = call i64 @_B_sub(i64 -9223372036854775806, i64 0), !dbg !32
  store i64 %76, i64* %23, !dbg !32
  %77 = load i64, i64* %23, !dbg !33
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %77), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  %79 = call i64 @_B_sub(i64 9223372036854775806, i64 -1), !dbg !34
  store i64 %79, i64* %25, !dbg !34
  %80 = load i64, i64* %25, !dbg !35
  %81 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %80), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !35
  %82 = call i64 @_B_sub(i64 1, i64 -1), !dbg !36
  store i64 %82, i64* %27, !dbg !36
  %83 = load i64, i64* %27, !dbg !37
  %84 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %83), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %84), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !37
  %85 = call i64 @_B_sub(i64 0, i64 -1), !dbg !38
  store i64 %85, i64* %29, !dbg !38
  %86 = load i64, i64* %29, !dbg !39
  %87 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %86), !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !39
  %88 = call i64 @_B_sub(i64 -1, i64 1), !dbg !40
  store i64 %88, i64* %31, !dbg !40
  %89 = load i64, i64* %31, !dbg !41
  %90 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %89), !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %90), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !41
  %91 = call i64 @_B_sub(i64 9223372036854775806, i64 9223372036854775806), !dbg !42
  store i64 %91, i64* %33, !dbg !42
  %92 = load i64, i64* %33, !dbg !43
  %93 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %92), !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %93), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !43
  %94 = call i64 @_B_sub(i64 1, i64 9223372036854775806), !dbg !44
  store i64 %94, i64* %35, !dbg !44
  %95 = load i64, i64* %35, !dbg !45
  %96 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %95), !dbg !45
  call void @_Bb02ioprintln(i8 addrspace(1)* %96), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !45
  %97 = call i64 @_B_sub(i64 0, i64 9223372036854775806), !dbg !46
  store i64 %97, i64* %37, !dbg !46
  %98 = load i64, i64* %37, !dbg !47
  %99 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %98), !dbg !47
  call void @_Bb02ioprintln(i8 addrspace(1)* %99), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !47
  ret void
100:
  %101 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %101)
  unreachable
}
define internal i64 @_B_sub(i64 %0, i64 %1) !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %9 = load i64, i64* %a
  %10 = load i64, i64* %b
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 7684), !dbg !48
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 7937), !dbg !48
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/sub3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"sub", linkageName:"_B_sub", scope: !1, file: !1, line: 30, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 15, scope: !5)
!21 = !DILocation(line: 11, column: 4, scope: !5)
!22 = !DILocation(line: 12, column: 15, scope: !5)
!23 = !DILocation(line: 12, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 4, scope: !5)
!26 = !DILocation(line: 15, column: 15, scope: !5)
!27 = !DILocation(line: 15, column: 4, scope: !5)
!28 = !DILocation(line: 16, column: 15, scope: !5)
!29 = !DILocation(line: 16, column: 4, scope: !5)
!30 = !DILocation(line: 17, column: 15, scope: !5)
!31 = !DILocation(line: 17, column: 4, scope: !5)
!32 = !DILocation(line: 18, column: 15, scope: !5)
!33 = !DILocation(line: 18, column: 4, scope: !5)
!34 = !DILocation(line: 20, column: 15, scope: !5)
!35 = !DILocation(line: 20, column: 4, scope: !5)
!36 = !DILocation(line: 21, column: 15, scope: !5)
!37 = !DILocation(line: 21, column: 4, scope: !5)
!38 = !DILocation(line: 22, column: 15, scope: !5)
!39 = !DILocation(line: 22, column: 4, scope: !5)
!40 = !DILocation(line: 23, column: 15, scope: !5)
!41 = !DILocation(line: 23, column: 4, scope: !5)
!42 = !DILocation(line: 25, column: 15, scope: !5)
!43 = !DILocation(line: 25, column: 4, scope: !5)
!44 = !DILocation(line: 26, column: 15, scope: !5)
!45 = !DILocation(line: 26, column: 4, scope: !5)
!46 = !DILocation(line: 27, column: 15, scope: !5)
!47 = !DILocation(line: 27, column: 4, scope: !5)
!48 = !DILocation(line: 0, column: 0, scope: !7)
