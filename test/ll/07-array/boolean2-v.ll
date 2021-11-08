@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %20, label %7
7:
  %8 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %9 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %8 to i8 addrspace(1)*
  %10 = getelementptr i8, i8 addrspace(1)* %9, i64 1297036692682702852
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %13 = zext i1 1 to i64
  %14 = or i64 %13, 72057594037927936
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14
  %16 = call i64 @_bal_list_set(i8 addrspace(1)* %12, i64 1, i8 addrspace(1)* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %29
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %24 = zext i1 1 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25
  %27 = call i64 @_bal_list_set(i8 addrspace(1)* %23, i64 3, i8 addrspace(1)* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %32, label %35
29:
  %30 = or i64 %16, 1536
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 %30), !dbg !7
  store i8 addrspace(1)* %31, i8 addrspace(1)** %3
  br label %18
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x, !dbg !8
  %34 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %33, i64 -5), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  ret void
35:
  %36 = or i64 %27, 1792
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 %36), !dbg !7
  store i8 addrspace(1)* %37, i8 addrspace(1)** %3
  br label %18
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/boolean2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
