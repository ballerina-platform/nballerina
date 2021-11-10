@_bal_stack_guard = external global i8*
@.str1 = internal unnamed_addr constant {i16, i16, [28 x i8]} {i16 21, i16 21, [28 x i8] c"this is a long string\00\00\00\00\00\00\00"}, align 8
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
@_Bt04root2 = external constant {i32, i32, [0 x i8*]}
@_Be04root0 = external constant i32
@_Bt04root3 = external constant {i32, i32, [0 x i8*]}
@_Be04root1 = external constant i32
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_structure_exactify(i8 addrspace(1)*, i32*) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %list = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %mapping = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %38, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !10
  call void @_B_p(i8 addrspace(1)* %15), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %16 = zext i1 0 to i64, !dbg !11
  %17 = or i64 %16, 72057594037927936, !dbg !11
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17, !dbg !11
  call void @_B_p(i8 addrspace(1)* %18), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B_p(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504)), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  call void @_B_p(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [28 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807), !dbg !14
  call void @_B_p(i8 addrspace(1)* %19), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -9223372036854775807), !dbg !15
  call void @_B_p(i8 addrspace(1)* %20), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %21 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 2)
  %22 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 3
  %23 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %22, align 8
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %25 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %23, i64 0, i64 0
  store i8 addrspace(1)* %24, i8 addrspace(1)* addrspace(1)* %25
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %27 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %23, i64 0, i64 1
  store i8 addrspace(1)* %26, i8 addrspace(1)* addrspace(1)* %27
  %28 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %28
  %29 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %21 to i8 addrspace(1)*
  %30 = getelementptr i8, i8 addrspace(1)* %29, i64 1297036692682702852
  store i8 addrspace(1)* %30, i8 addrspace(1)** %7
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %31, i8 addrspace(1)** %list
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %list, !dbg !16
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 -5), !dbg !16
  call void @_B_p(i8 addrspace(1)* %33), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !16
  %34 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root1, i64 0)
  store i8 addrspace(1)* %34, i8 addrspace(1)** %9
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  store i8 addrspace(1)* %35, i8 addrspace(1)** %mapping
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %mapping, !dbg !17
  %37 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %36, i64 -5), !dbg !17
  call void @_B_p(i8 addrspace(1)* %37), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  ret void
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
}
define internal void @_B_p(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %v.1 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %v.2 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %v.3 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %v.4 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %v.5 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8
  %13 = load i8*, i8** @_bal_stack_guard
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %61, label %15
15:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %17 = addrspacecast i8 addrspace(1)* %16 to i8*
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 72057594037927936
  store i1 %20, i1* %2
  %21 = load i1, i1* %2
  br i1 %21, label %22, label %27
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %24 = addrspacecast i8 addrspace(1)* %23 to i8*
  %25 = ptrtoint i8* %24 to i64
  %26 = trunc i64 %25 to i1
  store i1 %26, i1* %v.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488285269978978)), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !19
  br label %27
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %29 = addrspacecast i8 addrspace(1)* %28 to i8*
  %30 = ptrtoint i8* %29 to i64
  %31 = and i64 %30, 2233785415175766016
  %32 = icmp eq i64 %31, 504403158265495552
  store i1 %32, i1* %4
  %33 = load i1, i1* %4
  br i1 %33, label %34, label %37
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %36 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %35)
  store i64 %36, i64* %v.2
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473)), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !20
  br label %37
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %39 = addrspacecast i8 addrspace(1)* %38 to i8*
  %40 = ptrtoint i8* %39 to i64
  %41 = and i64 %40, 2233785415175766016
  %42 = icmp eq i64 %41, 720575940379279360
  store i1 %42, i1* %6
  %43 = load i1, i1* %6
  br i1 %43, label %44, label %46
44:
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  store i8 addrspace(1)* %45, i8 addrspace(1)** %v.3
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675)), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !21
  br label %46
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %48 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root2, i8 addrspace(1)* %47)
  store i1 %48, i1* %8
  %49 = load i1, i1* %8
  br i1 %49, label %50, label %53
50:
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %52 = call i8 addrspace(1)* @_bal_structure_exactify(i8 addrspace(1)* %51, i32* @_Be04root0)
  store i8 addrspace(1)* %52, i8 addrspace(1)** %v.4
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475965445206625)), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !22
  br label %53
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %55 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root3, i8 addrspace(1)* %54)
  store i1 %55, i1* %10
  %56 = load i1, i1* %10
  br i1 %56, label %57, label %60
57:
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %59 = call i8 addrspace(1)* @_bal_structure_exactify(i8 addrspace(1)* %58, i32* @_Be04root1)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %v.5
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621489005)), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !23
  br label %60
60:
  ret void
61:
  %62 = call i8 addrspace(1)* @_bal_panic_construct(i64 4356), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %62)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-typetest/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"p", linkageName:"_B_p", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 10, column: 4, scope: !5)
!16 = !DILocation(line: 12, column: 4, scope: !5)
!17 = !DILocation(line: 14, column: 4, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
!19 = !DILocation(line: 19, column: 8, scope: !7)
!20 = !DILocation(line: 22, column: 8, scope: !7)
!21 = !DILocation(line: 25, column: 8, scope: !7)
!22 = !DILocation(line: 28, column: 8, scope: !7)
!23 = !DILocation(line: 31, column: 8, scope: !7)
