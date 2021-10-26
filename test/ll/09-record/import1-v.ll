%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"floatField\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"intField\00\00\00\00"}, align 8
@_Bt04root1 = external constant %TypeTestVTable
@_Bi04root2 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_B0m4root6types1create(i64, double)
declare i1 @_B0m4root6types2test(i8 addrspace(1)*)
declare i1 @_B0m4root6types1test(i8 addrspace(1)*)
declare i8 addrspace(1)* @_B0m4root6types2create(i64, double)
define void @_B04rootmain() !dbg !5 {
  %r1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %r2 = alloca i8 addrspace(1)*
  %r = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8
  %26 = load i8*, i8** @_bal_stack_guard
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %117, label %28
28:
  %29 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %30 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %29, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %30)
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 255)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %29, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %31)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %32, i8 addrspace(1)** %r1
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %r1
  store i8 addrspace(1)* %33, i8 addrspace(1)** %r2
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %r2
  store i8 addrspace(1)* %34, i8 addrspace(1)** %r1
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %r2
  %36 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %35, i64 -5)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %r
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %38 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root1, i64 0, i32 0
  %39 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %38, align 8
  %40 = call i1 %39(%TypeTestVTable* @_Bt04root1, i8 addrspace(1)* %37)
  store i1 %40, i1* %2
  %41 = load i1, i1* %2, !dbg !8
  %42 = zext i1 %41 to i64, !dbg !8
  %43 = or i64 %42, 72057594037927936, !dbg !8
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %46 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root1, i64 0, i32 0
  %47 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %46, align 8
  %48 = call i1 %47(%TypeTestVTable* @_Bt04root1, i8 addrspace(1)* %45)
  store i1 %48, i1* %4
  %49 = load i1, i1* %4, !dbg !9
  %50 = zext i1 %49 to i64, !dbg !9
  %51 = or i64 %50, 72057594037927936, !dbg !9
  %52 = getelementptr i8, i8 addrspace(1)* null, i64 %51, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %52), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %53 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root2, i64 2)
  %54 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %53, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %54)
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %53, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %55)
  store i8 addrspace(1)* %53, i8 addrspace(1)** %6
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %56, i8 addrspace(1)** %r
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %58 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root1, i64 0, i32 0
  %59 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %58, align 8
  %60 = call i1 %59(%TypeTestVTable* @_Bt04root1, i8 addrspace(1)* %57)
  store i1 %60, i1* %7
  %61 = load i1, i1* %7, !dbg !10
  %62 = zext i1 %61 to i64, !dbg !10
  %63 = or i64 %62, 72057594037927936, !dbg !10
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !10
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %66 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root1, i64 0, i32 0
  %67 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %66, align 8
  %68 = call i1 %67(%TypeTestVTable* @_Bt04root1, i8 addrspace(1)* %65)
  store i1 %68, i1* %9
  %69 = load i1, i1* %9, !dbg !11
  %70 = zext i1 %69 to i64, !dbg !11
  %71 = or i64 %70, 72057594037927936, !dbg !11
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %72), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %73 = call i8 addrspace(1)* @_B0m4root6types1create(i64 11, double 3.5), !dbg !12
  store i8 addrspace(1)* %73, i8 addrspace(1)** %11, !dbg !12
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %75 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %74, i64 -5)
  store i8 addrspace(1)* %75, i8 addrspace(1)** %v
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !13
  %77 = call i1 @_B0m4root6types2test(i8 addrspace(1)* %76), !dbg !13
  store i1 %77, i1* %12, !dbg !13
  %78 = load i1, i1* %12, !dbg !14
  %79 = zext i1 %78 to i64, !dbg !14
  %80 = or i64 %79, 72057594037927936, !dbg !14
  %81 = getelementptr i8, i8 addrspace(1)* null, i64 %80, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %81), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !14
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !15
  %83 = call i1 @_B0m4root6types1test(i8 addrspace(1)* %82), !dbg !15
  store i1 %83, i1* %14, !dbg !15
  %84 = load i1, i1* %14, !dbg !16
  %85 = zext i1 %84 to i64, !dbg !16
  %86 = or i64 %85, 72057594037927936, !dbg !16
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !16
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %r, !dbg !17
  %89 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %88, i64 -5), !dbg !17
  %90 = call i1 @_B0m4root6types2test(i8 addrspace(1)* %89), !dbg !17
  store i1 %90, i1* %16, !dbg !17
  %91 = load i1, i1* %16, !dbg !18
  %92 = zext i1 %91 to i64, !dbg !18
  %93 = or i64 %92, 72057594037927936, !dbg !18
  %94 = getelementptr i8, i8 addrspace(1)* null, i64 %93, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !18
  %95 = call i8 addrspace(1)* @_B0m4root6types2create(i64 21, double -3.5), !dbg !19
  store i8 addrspace(1)* %95, i8 addrspace(1)** %18, !dbg !19
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %97 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %96, i64 -5)
  store i8 addrspace(1)* %97, i8 addrspace(1)** %v
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !20
  %99 = call i1 @_B0m4root6types1test(i8 addrspace(1)* %98), !dbg !20
  store i1 %99, i1* %19, !dbg !20
  %100 = load i1, i1* %19, !dbg !21
  %101 = zext i1 %100 to i64, !dbg !21
  %102 = or i64 %101, 72057594037927936, !dbg !21
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %103), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !21
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !22
  %105 = call i1 @_B0m4root6types2test(i8 addrspace(1)* %104), !dbg !22
  store i1 %105, i1* %21, !dbg !22
  %106 = load i1, i1* %21, !dbg !23
  %107 = zext i1 %106 to i64, !dbg !23
  %108 = or i64 %107, 72057594037927936, !dbg !23
  %109 = getelementptr i8, i8 addrspace(1)* null, i64 %108, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %109), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !23
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %r, !dbg !24
  %111 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %110, i64 -5), !dbg !24
  %112 = call i1 @_B0m4root6types1test(i8 addrspace(1)* %111), !dbg !24
  store i1 %112, i1* %23, !dbg !24
  %113 = load i1, i1* %23, !dbg !25
  %114 = zext i1 %113 to i64, !dbg !25
  %115 = or i64 %114, 72057594037927936, !dbg !25
  %116 = getelementptr i8, i8 addrspace(1)* null, i64 %115, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %116), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !25
  ret void
117:
  %118 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %118)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/import1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 14, column: 4, scope: !5)
!9 = !DILocation(line: 15, column: 4, scope: !5)
!10 = !DILocation(line: 17, column: 4, scope: !5)
!11 = !DILocation(line: 18, column: 4, scope: !5)
!12 = !DILocation(line: 20, column: 12, scope: !5)
!13 = !DILocation(line: 21, column: 15, scope: !5)
!14 = !DILocation(line: 21, column: 4, scope: !5)
!15 = !DILocation(line: 22, column: 15, scope: !5)
!16 = !DILocation(line: 22, column: 4, scope: !5)
!17 = !DILocation(line: 23, column: 15, scope: !5)
!18 = !DILocation(line: 23, column: 4, scope: !5)
!19 = !DILocation(line: 25, column: 8, scope: !5)
!20 = !DILocation(line: 26, column: 15, scope: !5)
!21 = !DILocation(line: 26, column: 4, scope: !5)
!22 = !DILocation(line: 27, column: 15, scope: !5)
!23 = !DILocation(line: 27, column: 4, scope: !5)
!24 = !DILocation(line: 28, column: 15, scope: !5)
!25 = !DILocation(line: 28, column: 4, scope: !5)
