@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %im = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %im2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %26, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 3)
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %10)
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %11)
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114), i8 addrspace(1)* %12)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %13, i8 addrspace(1)** %im
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %im
  %15 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %14, i64 -5)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %m
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %im
  store i8 addrspace(1)* %16, i8 addrspace(1)** %im2
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %im2, !dbg !8
  %18 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %17, i64 -5), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %im
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %im2
  %21 = call i1 @_bal_exact_eq(i8 addrspace(1)* %19, i8 addrspace(1)* %20)
  store i1 %21, i1* %3
  %22 = load i1, i1* %3, !dbg !9
  %23 = zext i1 %22 to i64, !dbg !9
  %24 = or i64 %23, 72057594037927936, !dbg !9
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  ret void
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/int8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
