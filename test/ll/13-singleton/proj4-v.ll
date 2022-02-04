@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %p = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %xy = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %37, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 44)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %13)
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 88)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %14)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475944187883376))
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %16 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %15)
  store i8 addrspace(1)* %16, i8 addrspace(1)** %p
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)** %xy
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %xy
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %19 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %18, i8 addrspace(1)* %17)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %2
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %20, i8 addrspace(1)** %x
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %22 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 2)
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 44)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %23)
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 88)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %24)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %4
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %26 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %25)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %p
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %xy
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %29 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %28, i8 addrspace(1)* %27)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %5
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %30, i8 addrspace(1)** %y
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %32 = icmp eq i8 addrspace(1)* %31, null
  store i1 %32, i1* %6
  %33 = load i1, i1* %6, !dbg !9
  %34 = zext i1 %33 to i64, !dbg !9
  %35 = or i64 %34, 72057594037927936, !dbg !9
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !9
  ret void
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/proj4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 20, column: 4, scope: !5)
!9 = !DILocation(line: 24, column: 4, scope: !5)
