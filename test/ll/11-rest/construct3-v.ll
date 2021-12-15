@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"whatever\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %y = alloca i1
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %stuff = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %38, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 28)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %13)
  %14 = zext i1 1 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %16)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055242051868372344), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str3 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %r
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %19 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %18, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %2
  %21 = load i64, i64* %2
  store i64 %21, i64* %x
  %22 = load i64, i64* %x, !dbg !8
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %25 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113))
  %26 = addrspacecast i8 addrspace(1)* %25 to i8*
  %27 = ptrtoint i8* %26 to i64
  %28 = trunc i64 %27 to i1
  store i1 %28, i1* %4
  %29 = load i1, i1* %4
  store i1 %29, i1* %y
  %30 = load i1, i1* %y, !dbg !9
  %31 = zext i1 %30 to i64, !dbg !9
  %32 = or i64 %31, 72057594037927936, !dbg !9
  %33 = getelementptr i8, i8 addrspace(1)* null, i64 %32, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %35 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %34, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055242051868372344))
  store i8 addrspace(1)* %35, i8 addrspace(1)** %6
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %36, i8 addrspace(1)** %stuff
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %stuff, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  ret void
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-rest/construct3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 12, column: 4, scope: !5)
!9 = !DILocation(line: 14, column: 4, scope: !5)
!10 = !DILocation(line: 16, column: 4, scope: !5)
