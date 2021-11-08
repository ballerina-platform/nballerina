@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bt04root1 = external constant {i32, i32, [0 x i8*]}
@_Be04root2 = external constant i32
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"all ints\00\00\00\00"}, align 8
@_Be04root0 = external constant i32
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_structure_exactify(i8 addrspace(1)*, i32*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %arr = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %arr.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %arr.2 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %arr.3 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %37, label %9
9:
  %10 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 3)
  %11 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 3
  %12 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %11, align 8
  %13 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 0
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)* addrspace(1)* %13
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %15 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 1
  store i8 addrspace(1)* %14, i8 addrspace(1)* addrspace(1)* %15
  %16 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090), i8 addrspace(1)* addrspace(1)* %16
  %17 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %17
  %18 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10 to i8 addrspace(1)*
  %19 = getelementptr i8, i8 addrspace(1)* %18, i64 1297036692682702852
  store i8 addrspace(1)* %19, i8 addrspace(1)** %1
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %arr
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  %22 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %21)
  store i1 %22, i1* %2
  %23 = load i1, i1* %2
  br i1 %23, label %24, label %27
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  %26 = call i8 addrspace(1)* @_bal_structure_exactify(i8 addrspace(1)* %25, i32* @_Be04root2)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %arr.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  br label %36
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  %29 = call i8 addrspace(1)* @_bal_structure_exactify(i8 addrspace(1)* %28, i32* @_Be04root0)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %arr.2
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %arr.2
  %31 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %30)
  store i1 %31, i1* %4
  %32 = load i1, i1* %4
  br i1 %32, label %33, label %35
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %arr.2
  store i8 addrspace(1)* %34, i8 addrspace(1)** %arr.3
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  br label %35
35:
  br label %36
36:
  ret void
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-inlinetype/narrow1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 8, scope: !5)
!9 = !DILocation(line: 9, column: 8, scope: !5)
