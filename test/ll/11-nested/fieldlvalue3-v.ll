@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i64 @_bal_mapping_inexact_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %35, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %15, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901097), i8 addrspace(1)* %16)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %1
  %17 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 1)
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_bal_mapping_init_member(i8 addrspace(1)* %17, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901091), i8 addrspace(1)* %18)
  store i8 addrspace(1)* %17, i8 addrspace(1)** %2
  %19 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root2, i64 1)
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_mapping_init_member(i8 addrspace(1)* %19, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090), i8 addrspace(1)* %20)
  store i8 addrspace(1)* %19, i8 addrspace(1)** %3
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %21, i8 addrspace(1)** %a
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901097), i8 addrspace(1)** %m
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %23 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %22, i64 0)
  %24 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %22, i8 addrspace(1)* %23)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %4
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %26 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %25, i64 0)
  %27 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %25, i8 addrspace(1)* %26)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %5
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  %31 = call i64 @_bal_mapping_inexact_set(i8 addrspace(1)* %29, i8 addrspace(1)* %28, i8 addrspace(1)* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %49
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %39 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %38, i64 0)
  %40 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %38, i8 addrspace(1)* %39)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %6
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %42 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %41, i64 0)
  %43 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %41, i8 addrspace(1)* %42)
  store i8 addrspace(1)* %43, i8 addrspace(1)** %7
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  %45 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %44, i64 0)
  %46 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %45)
  store i64 %46, i64* %8
  %47 = load i64, i64* %8, !dbg !8
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %47), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %48), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !8
  ret void
49:
  %50 = or i64 %31, 4608
  %51 = call i8 addrspace(1)* @_bal_panic_construct(i64 %50), !dbg !7
  store i8 addrspace(1)* %51, i8 addrspace(1)** %10
  br label %33
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/fieldlvalue3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 19, column: 4, scope: !5)
