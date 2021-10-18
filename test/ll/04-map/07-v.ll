@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %20, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !10
  %11 = call i8 addrspace(1)* @_B_wrap(i8 addrspace(1)* %10), !dbg !10
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1, !dbg !10
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  %13 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %12, i64 -5), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %14 = call i8 addrspace(1)* @_B_wrap(i8 addrspace(1)* null), !dbg !12
  store i8 addrspace(1)* %14, i8 addrspace(1)** %3, !dbg !12
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  %16 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %15, i64 -5), !dbg !13
  %17 = call i8 addrspace(1)* @_B_wrap(i8 addrspace(1)* %16), !dbg !13
  store i8 addrspace(1)* %17, i8 addrspace(1)** %4, !dbg !13
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %4, !dbg !14
  %19 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %18, i64 -5), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  ret void
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
define internal i8 addrspace(1)* @_B_wrap(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %7 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879881007478), i8 addrspace(1)* %8)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %2
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  ret i8 addrspace(1)* %9
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/07-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"wrap", linkageName:"_B_wrap", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 20, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
