@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_alloc(i64)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %16, label %6
6:
  %7 = call i8 addrspace(1)* @_B_foo(), !dbg !10
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1, !dbg !10
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %9 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %8, i64 -5)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %v
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %12 = call i64 @_bal_list_set(i8 addrspace(1)* %10, i64 1, i8 addrspace(1)* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %19
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  ret void
19:
  %20 = or i64 %12, 1024
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 %20), !dbg !9
  store i8 addrspace(1)* %21, i8 addrspace(1)** %2
  br label %14
}
define internal i8 addrspace(1)* @_B_foo() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %14, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %7 = bitcast i8 addrspace(1)* %6 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %8 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %7, i64 0, i32 0
  store i64 1152, i64 addrspace(1)* %8
  %9 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %7, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %9
  %10 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %7, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %10
  %11 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %7, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %11
  %12 = getelementptr i8, i8 addrspace(1)* %6, i64 1297036692682702852
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  ret i8 addrspace(1)* %13
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/1-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 14, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
