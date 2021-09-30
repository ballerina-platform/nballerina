@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %mi = alloca i8 addrspace(1)*
  %ma = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %17, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_mapping_construct(i64 128, i64 0)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %9, i8 addrspace(1)** %mi
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %mi
  %11 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %10, i64 -5)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %ma
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %ma
  %13 = call i64 @_bal_mapping_set(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* null)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %22
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %ma, !dbg !10
  %21 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %20, i64 -5), !dbg !10
  call void @_B_ignore(i8 addrspace(1)* %21), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  ret void
22:
  %23 = or i64 %13, 1280
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 %23), !dbg !9
  store i8 addrspace(1)* %24, i8 addrspace(1)** %3
  br label %15
}
define internal void @_B_ignore(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  ret void
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/int5-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"ignore", linkageName:"_B_ignore", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 6, column: 4, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
