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
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %sPoint = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %p = alloca i8 addrspace(1)*
  %xy = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %point = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 44)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %12)
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 88)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %13)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475944187883376))
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %14, i8 addrspace(1)** %sPoint
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %sPoint
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
  %22 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 3)
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 44)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %23)
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 88)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %24)
  %25 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %25)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %4
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  store i8 addrspace(1)* %26, i8 addrspace(1)** %point
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %point
  %28 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %27)
  store i8 addrspace(1)* %28, i8 addrspace(1)** %p
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %xy
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %31 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %30, i8 addrspace(1)* %29)
  store i8 addrspace(1)* %31, i8 addrspace(1)** %5
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  store i8 addrspace(1)* %32, i8 addrspace(1)** %y
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %y, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !9
  ret void
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 4356), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-singleton/proj5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 22, column: 4, scope: !5)
!9 = !DILocation(line: 27, column: 4, scope: !5)
