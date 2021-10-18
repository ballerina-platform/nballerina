@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_alloc(i64)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
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
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %73, label %20
20:
  %21 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %22)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 -5)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %x
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %25, i8 addrspace(1)** %y
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !10
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %y, !dbg !10
  call void @_B_printEq(i8 addrspace(1)* %26, i8 addrspace(1)* %27), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  %28 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %28, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %29)
  store i8 addrspace(1)* %28, i8 addrspace(1)** %3
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !11
  %31 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %30, i64 -5), !dbg !11
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !11
  call void @_B_printEq(i8 addrspace(1)* %31, i8 addrspace(1)* %32), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %33 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %33, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %34)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %5
  %35 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %36 = bitcast i8 addrspace(1)* %35 to [1 x i8 addrspace(1)*] addrspace(1)*
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %38 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %36, i64 0, i64 0
  store i8 addrspace(1)* %37, i8 addrspace(1)* addrspace(1)* %38
  %39 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %36 to [0 x i8 addrspace(1)*] addrspace(1)*
  %40 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %41 = bitcast i8 addrspace(1)* %40 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %42 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 0
  store i64 8388607, i64 addrspace(1)* %42
  %43 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %43
  %44 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 2
  store i64 1, i64 addrspace(1)* %44
  %45 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %41, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %39, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %45
  %46 = getelementptr i8, i8 addrspace(1)* %40, i64 1297036692682702852
  store i8 addrspace(1)* %46, i8 addrspace(1)** %6
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !12
  %48 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %47, i64 -5), !dbg !12
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %6, !dbg !12
  %50 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 -5), !dbg !12
  call void @_B_printEq(i8 addrspace(1)* %48, i8 addrspace(1)* %50), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !12
  %51 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %52 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %51, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %52)
  store i8 addrspace(1)* %51, i8 addrspace(1)** %8
  %53 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %53, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %54)
  store i8 addrspace(1)* %53, i8 addrspace(1)** %9
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %8, !dbg !13
  %56 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %55, i64 -5), !dbg !13
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !13
  %58 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %57, i64 -5), !dbg !13
  call void @_B_printEq(i8 addrspace(1)* %56, i8 addrspace(1)* %58), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !13
  %59 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %11
  %60 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %12
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !14
  %62 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %61, i64 -5), !dbg !14
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %12, !dbg !14
  %64 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %63, i64 -5), !dbg !14
  call void @_B_printEq(i8 addrspace(1)* %62, i8 addrspace(1)* %64), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !14
  %65 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %65, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %66)
  store i8 addrspace(1)* %65, i8 addrspace(1)** %14
  %67 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %68 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %67, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901110), i8 addrspace(1)* %68)
  store i8 addrspace(1)* %67, i8 addrspace(1)** %15
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %14, !dbg !15
  %70 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %69, i64 -5), !dbg !15
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !15
  %72 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %71, i64 -5), !dbg !15
  call void @_B_printEq(i8 addrspace(1)* %70, i8 addrspace(1)* %72), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  ret void
73:
  %74 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %74)
  unreachable
}
define internal void @_B_printEq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %26, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %13 = call i1 @_bal_exact_eq(i8 addrspace(1)* %11, i8 addrspace(1)* %12)
  store i1 %13, i1* %3
  %14 = load i1, i1* %3, !dbg !17
  %15 = zext i1 %14 to i64, !dbg !17
  %16 = or i64 %15, 72057594037927936, !dbg !17
  %17 = getelementptr i8, i8 addrspace(1)* null, i64 %16, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !17
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %20 = call i1 @_bal_exact_eq(i8 addrspace(1)* %18, i8 addrspace(1)* %19)
  %21 = xor i1 %20, 1
  store i1 %21, i1* %5
  %22 = load i1, i1* %5, !dbg !18
  %23 = zext i1 %22 to i64, !dbg !18
  %24 = or i64 %23, 72057594037927936, !dbg !18
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !18
  ret void
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-equal/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printEq", linkageName:"_B_printEq", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 14, column: 4, scope: !5)
!13 = !DILocation(line: 17, column: 4, scope: !5)
!14 = !DILocation(line: 20, column: 4, scope: !5)
!15 = !DILocation(line: 23, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 27, column: 4, scope: !7)
!18 = !DILocation(line: 28, column: 4, scope: !7)
