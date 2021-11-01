@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"floatField\00\00"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"intField\00\00\00\00"}, align 8
@_Bt04root1 = external constant {i32, i32, [0 x i8*]}
@_Bi04root2 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
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
  br i1 %27, label %109, label %28
28:
  %29 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 2)
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
  %38 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %37)
  store i1 %38, i1* %2
  %39 = load i1, i1* %2, !dbg !8
  %40 = zext i1 %39 to i64, !dbg !8
  %41 = or i64 %40, 72057594037927936, !dbg !8
  %42 = getelementptr i8, i8 addrspace(1)* null, i64 %41, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %44 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %43)
  store i1 %44, i1* %4
  %45 = load i1, i1* %4, !dbg !9
  %46 = zext i1 %45 to i64, !dbg !9
  %47 = or i64 %46, 72057594037927936, !dbg !9
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %49 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root2, i64 2)
  %50 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %49, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %50)
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %49, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* %51)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %6
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %52, i8 addrspace(1)** %r
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %54 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %53)
  store i1 %54, i1* %7
  %55 = load i1, i1* %7, !dbg !10
  %56 = zext i1 %55 to i64, !dbg !10
  %57 = or i64 %56, 72057594037927936, !dbg !10
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !10
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %60 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %59)
  store i1 %60, i1* %9
  %61 = load i1, i1* %9, !dbg !11
  %62 = zext i1 %61 to i64, !dbg !11
  %63 = or i64 %62, 72057594037927936, !dbg !11
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !11
  %65 = call i8 addrspace(1)* @_B0m4root6types1create(i64 11, double 3.5), !dbg !12
  store i8 addrspace(1)* %65, i8 addrspace(1)** %11, !dbg !12
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  %67 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %66, i64 -5)
  store i8 addrspace(1)* %67, i8 addrspace(1)** %v
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !13
  %69 = call i1 @_B0m4root6types2test(i8 addrspace(1)* %68), !dbg !13
  store i1 %69, i1* %12, !dbg !13
  %70 = load i1, i1* %12, !dbg !14
  %71 = zext i1 %70 to i64, !dbg !14
  %72 = or i64 %71, 72057594037927936, !dbg !14
  %73 = getelementptr i8, i8 addrspace(1)* null, i64 %72, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !14
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !15
  %75 = call i1 @_B0m4root6types1test(i8 addrspace(1)* %74), !dbg !15
  store i1 %75, i1* %14, !dbg !15
  %76 = load i1, i1* %14, !dbg !16
  %77 = zext i1 %76 to i64, !dbg !16
  %78 = or i64 %77, 72057594037927936, !dbg !16
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !16
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %r, !dbg !17
  %81 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %80, i64 -5), !dbg !17
  %82 = call i1 @_B0m4root6types2test(i8 addrspace(1)* %81), !dbg !17
  store i1 %82, i1* %16, !dbg !17
  %83 = load i1, i1* %16, !dbg !18
  %84 = zext i1 %83 to i64, !dbg !18
  %85 = or i64 %84, 72057594037927936, !dbg !18
  %86 = getelementptr i8, i8 addrspace(1)* null, i64 %85, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %86), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !18
  %87 = call i8 addrspace(1)* @_B0m4root6types2create(i64 21, double -3.5), !dbg !19
  store i8 addrspace(1)* %87, i8 addrspace(1)** %18, !dbg !19
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  %89 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %88, i64 -5)
  store i8 addrspace(1)* %89, i8 addrspace(1)** %v
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !20
  %91 = call i1 @_B0m4root6types1test(i8 addrspace(1)* %90), !dbg !20
  store i1 %91, i1* %19, !dbg !20
  %92 = load i1, i1* %19, !dbg !21
  %93 = zext i1 %92 to i64, !dbg !21
  %94 = or i64 %93, 72057594037927936, !dbg !21
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %95), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !21
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !22
  %97 = call i1 @_B0m4root6types2test(i8 addrspace(1)* %96), !dbg !22
  store i1 %97, i1* %21, !dbg !22
  %98 = load i1, i1* %21, !dbg !23
  %99 = zext i1 %98 to i64, !dbg !23
  %100 = or i64 %99, 72057594037927936, !dbg !23
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %101), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !23
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %r, !dbg !24
  %103 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %102, i64 -5), !dbg !24
  %104 = call i1 @_B0m4root6types1test(i8 addrspace(1)* %103), !dbg !24
  store i1 %104, i1* %23, !dbg !24
  %105 = load i1, i1* %23, !dbg !25
  %106 = zext i1 %105 to i64, !dbg !25
  %107 = or i64 %106, 72057594037927936, !dbg !25
  %108 = getelementptr i8, i8 addrspace(1)* null, i64 %107, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %108), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !25
  ret void
109:
  %110 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %110)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
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
