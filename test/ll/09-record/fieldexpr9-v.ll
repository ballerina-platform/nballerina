@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %15, label %7
7:
  %8 = call i8 addrspace(1)* @_B_origin(), !dbg !10
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1, !dbg !10
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %10 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %9, i64 0)
  %11 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %10)
  store i64 %11, i64* %2
  %12 = load i64, i64* %2
  store i64 %12, i64* %x
  %13 = load i64, i64* %x, !dbg !11
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %13), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !11
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
define internal i8 addrspace(1)* @_B_origin() !dbg !7 {
  %p = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %11, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 2)
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %6, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %7)
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %6, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %8)
  store i8 addrspace(1)* %6, i8 addrspace(1)** %1
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %9, i8 addrspace(1)** %p
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %p
  ret i8 addrspace(1)* %10
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/fieldexpr9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"origin", linkageName:"_B_origin", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 10, column: 12, scope: !5)
!11 = !DILocation(line: 11, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
