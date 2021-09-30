@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8
  %23 = load i8*, i8** @_bal_stack_guard
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %34, label %25
25:
  %26 = call i64 @_B_foo(), !dbg !12
  store i64 %26, i64* %1, !dbg !12
  %27 = call i64 @_B_bar(), !dbg !13
  store i64 %27, i64* %2, !dbg !13
  %28 = load i64, i64* %1
  %29 = load i64, i64* %2
  %30 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %28, i64 %29)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %46, label %36
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %21
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = extractvalue {i64, i1} %30, 0
  store i64 %37, i64* %3
  %38 = load i64, i64* %3, !dbg !14
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !14
  %40 = call i64 @_B_foo(), !dbg !15
  store i64 %40, i64* %5, !dbg !15
  %41 = call i64 @_B_bar(), !dbg !16
  store i64 %41, i64* %6, !dbg !16
  %42 = load i64, i64* %5
  %43 = load i64, i64* %6
  %44 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %42, i64 %43)
  %45 = extractvalue {i64, i1} %44, 1
  br i1 %45, label %58, label %48
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !11
  store i8 addrspace(1)* %47, i8 addrspace(1)** %21
  br label %32
48:
  %49 = extractvalue {i64, i1} %44, 0
  store i64 %49, i64* %7
  %50 = load i64, i64* %7, !dbg !17
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %50), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %52 = call i64 @_B_foo(), !dbg !18
  store i64 %52, i64* %9, !dbg !18
  %53 = call i64 @_B_bar(), !dbg !19
  store i64 %53, i64* %10, !dbg !19
  %54 = load i64, i64* %9
  %55 = load i64, i64* %10
  %56 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %54, i64 %55)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %69, label %60
58:
  %59 = call i8 addrspace(1)* @_bal_panic_construct(i64 1537), !dbg !11
  store i8 addrspace(1)* %59, i8 addrspace(1)** %21
  br label %32
60:
  %61 = extractvalue {i64, i1} %56, 0
  store i64 %61, i64* %11
  %62 = load i64, i64* %11, !dbg !20
  %63 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %62), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !20
  %64 = call i64 @_B_foo(), !dbg !21
  store i64 %64, i64* %13, !dbg !21
  %65 = call i64 @_B_bar(), !dbg !22
  store i64 %65, i64* %14, !dbg !22
  %66 = load i64, i64* %13
  %67 = load i64, i64* %14
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %71, label %73
69:
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !11
  store i8 addrspace(1)* %70, i8 addrspace(1)** %21
  br label %32
71:
  %72 = call i8 addrspace(1)* @_bal_panic_construct(i64 2050), !dbg !11
  store i8 addrspace(1)* %72, i8 addrspace(1)** %21
  br label %32
73:
  %74 = icmp eq i64 %66, -9223372036854775808
  %75 = icmp eq i64 %67, -1
  %76 = and i1 %74, %75
  br i1 %76, label %86, label %77
77:
  %78 = sdiv i64 %66, %67
  store i64 %78, i64* %15
  %79 = load i64, i64* %15, !dbg !23
  %80 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %79), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %80), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !23
  %81 = call i64 @_B_foo(), !dbg !24
  store i64 %81, i64* %17, !dbg !24
  %82 = call i64 @_B_bar(), !dbg !25
  store i64 %82, i64* %18, !dbg !25
  %83 = load i64, i64* %17
  %84 = load i64, i64* %18
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %88, label %90
86:
  %87 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049), !dbg !11
  store i8 addrspace(1)* %87, i8 addrspace(1)** %21
  br label %32
88:
  %89 = call i8 addrspace(1)* @_bal_panic_construct(i64 2306), !dbg !11
  store i8 addrspace(1)* %89, i8 addrspace(1)** %21
  br label %32
90:
  %91 = icmp eq i64 %83, -9223372036854775808
  %92 = icmp eq i64 %84, -1
  %93 = and i1 %91, %92
  br i1 %93, label %96, label %94
94:
  %95 = srem i64 %83, %84
  store i64 %95, i64* %19
  br label %97
96:
  store i64 0, i64* %19
  br label %97
97:
  %98 = load i64, i64* %19, !dbg !26
  %99 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %98), !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %99), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !26
  ret void
}
define internal i64 @_B_foo() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 105
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !27
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
define internal i64 @_B_bar() !dbg !9 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %5, label %4
4:
  ret i64 2
5:
  %6 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100), !dbg !28
  call void @_bal_panic(i8 addrspace(1)* %6)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call04-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 23, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 23, scope: !5)
!17 = !DILocation(line: 6, column: 4, scope: !5)
!18 = !DILocation(line: 7, column: 15, scope: !5)
!19 = !DILocation(line: 7, column: 23, scope: !5)
!20 = !DILocation(line: 7, column: 4, scope: !5)
!21 = !DILocation(line: 8, column: 15, scope: !5)
!22 = !DILocation(line: 8, column: 23, scope: !5)
!23 = !DILocation(line: 8, column: 4, scope: !5)
!24 = !DILocation(line: 9, column: 15, scope: !5)
!25 = !DILocation(line: 9, column: 23, scope: !5)
!26 = !DILocation(line: 9, column: 4, scope: !5)
!27 = !DILocation(line: 0, column: 0, scope: !7)
!28 = !DILocation(line: 0, column: 0, scope: !9)
