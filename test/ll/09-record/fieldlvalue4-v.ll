@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_indexed_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %p = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %23, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 44)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %12)
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 88)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %13)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %14, i8 addrspace(1)** %p
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %16 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %15, i64 0)
  %17 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %16)
  store i64 %17, i64* %2
  %18 = load i64, i64* %2
  %19 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %18, i64 22)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %32, label %25
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = extractvalue {i64, i1} %19, 0
  store i64 %26, i64* %3
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %28 = load i64, i64* %3
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28)
  %30 = call i64 @_bal_mapping_indexed_set(i8 addrspace(1)* %27, i64 0, i8 addrspace(1)* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %34, label %40
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %33, i8 addrspace(1)** %6
  br label %21
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %36 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %35, i64 0)
  %37 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %36)
  store i64 %37, i64* %4
  %38 = load i64, i64* %4, !dbg !8
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  ret void
40:
  %41 = or i64 %30, 2560
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 %41), !dbg !7
  store i8 addrspace(1)* %42, i8 addrspace(1)** %6
  br label %21
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/fieldlvalue4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 4, scope: !5)
