@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare {i8 addrspace(1)*, i64} @_bal_mapping_filling_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i64 @_bal_mapping_indexed_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %m = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %21, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %12, i8 addrspace(1)** %m
  %13 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 1)
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901097), i8 addrspace(1)* %14)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %2
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %17 = call i64 @_bal_mapping_set(i8 addrspace(1)* %15, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %28
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %25 = call {i8 addrspace(1)*, i64} @_bal_mapping_filling_get(i8 addrspace(1)* %24, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %26 = extractvalue {i8 addrspace(1)*, i64} %25, 1
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %31
28:
  %29 = or i64 %17, 2048
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 %29), !dbg !7
  store i8 addrspace(1)* %30, i8 addrspace(1)** %6
  br label %19
31:
  %32 = extractvalue {i8 addrspace(1)*, i64} %25, 0
  %33 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %24, i8 addrspace(1)* %32)
  store i8 addrspace(1)* %33, i8 addrspace(1)** %3
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  %36 = call i64 @_bal_mapping_indexed_set(i8 addrspace(1)* %34, i64 0, i8 addrspace(1)* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %47
38:
  %39 = or i64 %26, 2304
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 %39), !dbg !7
  store i8 addrspace(1)* %40, i8 addrspace(1)** %6
  br label %19
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %43 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %42, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  %44 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %42, i8 addrspace(1)* %43)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %4
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %4, !dbg !8
  %46 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %45), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  ret void
47:
  %48 = or i64 %36, 2304
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 %48), !dbg !7
  store i8 addrspace(1)* %49, i8 addrspace(1)** %6
  br label %19
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/chain2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 10, column: 4, scope: !5)
