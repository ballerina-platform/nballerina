@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare {i8 addrspace(1)*, i64} @_bal_mapping_filling_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i64 @_bal_mapping_indexed_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
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
  br i1 %9, label %19, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %12, i8 addrspace(1)** %m
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %14 = call {i8 addrspace(1)*, i64} @_bal_mapping_filling_get(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046))
  %15 = extractvalue {i8 addrspace(1)*, i64} %14, 1
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %31, label %21
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = extractvalue {i8 addrspace(1)*, i64} %14, 0
  %23 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %13, i8 addrspace(1)* %22)
  store i8 addrspace(1)* %23, i8 addrspace(1)** %2
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %25 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %24, i64 0)
  %26 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %24, i8 addrspace(1)* %25)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %3
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %29 = call i64 @_bal_mapping_indexed_set(i8 addrspace(1)* %27, i64 0, i8 addrspace(1)* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %40
31:
  %32 = or i64 %15, 2048
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 %32), !dbg !7
  store i8 addrspace(1)* %33, i8 addrspace(1)** %6
  br label %17
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %36 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %35, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621427046))
  %37 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %35, i8 addrspace(1)* %36)
  store i8 addrspace(1)* %37, i8 addrspace(1)** %4
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %4, !dbg !8
  %39 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %38), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  ret void
40:
  %41 = or i64 %29, 2048
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 %41), !dbg !7
  store i8 addrspace(1)* %42, i8 addrspace(1)** %6
  br label %17
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-fill/fill4-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 4, scope: !5)
