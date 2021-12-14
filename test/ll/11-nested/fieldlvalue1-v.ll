@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare i64 @_bal_mapping_indexed_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %p = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %24, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475944272357734), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541188271946))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541289652588), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475892748938579))
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %12 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 2)
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 30)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620769633), i8 addrspace(1)* %13)
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037601134), i8 addrspace(1)* %14)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %2
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %15, i8 addrspace(1)** %p
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %17 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %16, i64 1)
  %18 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %16, i8 addrspace(1)* %17)
  store i8 addrspace(1)* %18, i8 addrspace(1)** %3
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %20 = call i64 @_bal_mapping_indexed_set(i8 addrspace(1)* %19, i64 0, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037666634))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %32
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  %28 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %27, i64 1)
  %29 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %27, i8 addrspace(1)* %28)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %4
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %4, !dbg !8
  %31 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %30), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  ret void
32:
  %33 = or i64 %20, 4608
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 %33), !dbg !7
  store i8 addrspace(1)* %34, i8 addrspace(1)** %6
  br label %22
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/fieldlvalue1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 19, column: 4, scope: !5)
