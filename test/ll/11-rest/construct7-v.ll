@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_clear_exact_any(i8 addrspace(1)*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %18, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %9)
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %10)
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double 17.0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %8, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475935446889583), i8 addrspace(1)* %11)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %13 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %12)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %r
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %15 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %14, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475935446889583))
  %16 = call i8 addrspace(1)* @_bal_tagged_clear_exact_any(i8 addrspace(1)* %15)
  store i8 addrspace(1)* %16, i8 addrspace(1)** %2
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  ret void
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-rest/construct7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 17, column: 4, scope: !5)
