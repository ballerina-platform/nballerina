@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
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
  br i1 %11, label %39, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046), i8 addrspace(1)* %14)
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621620066), i8 addrspace(1)* %15)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %16, i8 addrspace(1)** %m
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %18 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %17, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046))
  %19 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %17, i8 addrspace(1)* %18)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %20, i8 addrspace(1)** %v
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %23 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621620066))
  %24 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %22, i8 addrspace(1)* %23)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %4
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %4, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %27 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %26, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622144354))
  %28 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_any(i8 addrspace(1)* %26, i8 addrspace(1)* %27)
  store i8 addrspace(1)* %28, i8 addrspace(1)** %6
  %29 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root1, i64 1)
  %30 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %29, i64 0, i32 3
  %31 = load i8* addrspace(1)*, i8* addrspace(1)* addrspace(1)* %30, align 8
  %32 = bitcast i8* addrspace(1)* %31 to [0 x i8 addrspace(1)*] addrspace(1)*
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %34 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %32, i64 0, i64 0
  store i8 addrspace(1)* %33, i8 addrspace(1)* addrspace(1)* %34
  %35 = getelementptr inbounds {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %29, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %35
  %36 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %29 to i8 addrspace(1)*
  %37 = getelementptr i8, i8 addrspace(1)* %36, i64 1297036692682702852
  store i8 addrspace(1)* %37, i8 addrspace(1)** %7
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !10
  ret void
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %40)
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
