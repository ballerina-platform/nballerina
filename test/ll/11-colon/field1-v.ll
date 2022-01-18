@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %27, label %13
13:
  store i64 1, i64* %x
  %14 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %15 = load i64, i64* %x
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %14, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %16)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %r
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %19 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %18, i64 0)
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %2
  %21 = load i64, i64* %x
  %22 = load i64, i64* %2
  %23 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %21, i64 %22)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %42, label %29
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = extractvalue {i64, i1} %23, 0
  store i64 %30, i64* %3
  %31 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %32 = load i64, i64* %3
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %32)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %31, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %33)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %4
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %34, i8 addrspace(1)** %r
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %36 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %35, i64 0)
  %37 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %36)
  store i64 %37, i64* %5
  %38 = load i64, i64* %5, !dbg !8
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504)), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !9
  %40 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %40, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* null)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %8
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  store i8 addrspace(1)* %41, i8 addrspace(1)** %_
  ret void
42:
  %43 = call i8 addrspace(1)* @_bal_panic_construct(i64 1537), !dbg !7
  store i8 addrspace(1)* %43, i8 addrspace(1)** %9
  br label %25
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-colon/field1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 32, scope: !5)
