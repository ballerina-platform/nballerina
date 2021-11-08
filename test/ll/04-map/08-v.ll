@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %m = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %36, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 2)
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046), i8 addrspace(1)* %14)
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621620066), i8 addrspace(1)* %15)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %16, i8 addrspace(1)** %m
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %18 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %17, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046))
  store i8 addrspace(1)* %18, i8 addrspace(1)** %2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %19, i8 addrspace(1)** %v
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %22 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621620066))
  store i8 addrspace(1)* %22, i8 addrspace(1)** %4
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %4, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %25 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622144354))
  store i8 addrspace(1)* %25, i8 addrspace(1)** %6
  %26 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 1)
  %27 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 3
  %28 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %27, align 8
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %30 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %28, i64 0, i64 0
  store i8 addrspace(1)* %29, i8 addrspace(1)* addrspace(1)* %30
  %31 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %31
  %32 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %26 to i8 addrspace(1)*
  %33 = getelementptr i8, i8 addrspace(1)* %32, i64 1297036692682702852
  store i8 addrspace(1)* %33, i8 addrspace(1)** %7
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !10
  %35 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %34, i64 -5), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !10
  ret void
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 9, column: 4, scope: !5)
