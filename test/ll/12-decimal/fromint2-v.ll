@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_from_int(i64) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
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
  %24 = alloca i8
  %25 = load i8*, i8** @_bal_stack_guard
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %31, label %27
27:
  store i64 1, i64* %i
  %28 = load i64, i64* %i
  br i1 0, label %37, label %33
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %28)
  store i8 addrspace(1)* %34, i8 addrspace(1)** %1
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  store i64 0, i64* %i
  %36 = load i64, i64* %i
  br i1 0, label %42, label %38
37:
  br label %29
38:
  %39 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %36)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %3
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  store i64 -1, i64* %i
  %41 = load i64, i64* %i
  br i1 0, label %47, label %43
42:
  br label %29
43:
  %44 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %41)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %5
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  store i64 2147483647, i64* %i
  %46 = load i64, i64* %i
  br i1 0, label %52, label %48
47:
  br label %29
48:
  %49 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %46)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %7
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  store i64 2147483646, i64* %i
  %51 = load i64, i64* %i
  br i1 0, label %57, label %53
52:
  br label %29
53:
  %54 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %51)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %9
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  store i64 2147483648, i64* %i
  %56 = load i64, i64* %i
  br i1 0, label %62, label %58
57:
  br label %29
58:
  %59 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %56)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %11
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %60), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  store i64 -2147483648, i64* %i
  %61 = load i64, i64* %i
  br i1 0, label %67, label %63
62:
  br label %29
63:
  %64 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %61)
  store i8 addrspace(1)* %64, i8 addrspace(1)** %13
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %65), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  store i64 -2147483647, i64* %i
  %66 = load i64, i64* %i
  br i1 0, label %72, label %68
67:
  br label %29
68:
  %69 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %66)
  store i8 addrspace(1)* %69, i8 addrspace(1)** %15
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %70), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  store i64 -2147483649, i64* %i
  %71 = load i64, i64* %i
  br i1 0, label %77, label %73
72:
  br label %29
73:
  %74 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %71)
  store i8 addrspace(1)* %74, i8 addrspace(1)** %17
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %75), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !16
  store i64 9223372036854775807, i64* %i
  %76 = load i64, i64* %i
  br i1 0, label %82, label %78
77:
  br label %29
78:
  %79 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %76)
  store i8 addrspace(1)* %79, i8 addrspace(1)** %19
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %80), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !17
  store i64 -9223372036854775808, i64* %i
  %81 = load i64, i64* %i
  br i1 0, label %86, label %83
82:
  br label %29
83:
  %84 = call i8 addrspace(1)* @_bal_decimal_from_int(i64 %81)
  store i8 addrspace(1)* %84, i8 addrspace(1)** %21
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %85), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !18
  ret void
86:
  br label %29
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/fromint2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
!9 = !DILocation(line: 6, column: 4, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 14, column: 4, scope: !5)
!14 = !DILocation(line: 16, column: 4, scope: !5)
!15 = !DILocation(line: 18, column: 4, scope: !5)
!16 = !DILocation(line: 20, column: 4, scope: !5)
!17 = !DILocation(line: 22, column: 4, scope: !5)
!18 = !DILocation(line: 24, column: 4, scope: !5)
