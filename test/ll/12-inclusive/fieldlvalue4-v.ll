@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %p = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %34, label %13
13:
  %14 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %14, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %15)
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %14, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %16)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %p
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %19 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %18, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %2
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %22 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113))
  %23 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %22)
  store i64 %23, i64* %3
  %24 = load i64, i64* %2
  %25 = load i64, i64* %3
  %26 = or i64 %24, %25
  store i64 %26, i64* %4
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %28 = load i64, i64* %4
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28)
  %30 = call i64 @_bal_mapping_set(i8 addrspace(1)* %27, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %47
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %38 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %37, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %39 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %38)
  store i64 %39, i64* %5
  %40 = load i64, i64* %5, !dbg !8
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %40), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %41), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !8
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %43 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %42, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113))
  %44 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %43)
  store i64 %44, i64* %7
  %45 = load i64, i64* %7, !dbg !9
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %45), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !9
  ret void
47:
  %48 = or i64 %30, 2560
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 %48), !dbg !7
  store i8 addrspace(1)* %49, i8 addrspace(1)** %9
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-inclusive/fieldlvalue4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 4, scope: !5)
!9 = !DILocation(line: 12, column: 4, scope: !5)
