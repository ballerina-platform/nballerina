@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bt04root1 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32, i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i1
  %y.1 = alloca i8 addrspace(1)*
  %b = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %32, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_mapping_construct({i32, i32}* @_Bi04root0, i64 1)
  %10 = zext i1 1 to i64
  %11 = or i64 %10, 72057594037927936
  %12 = getelementptr i8, i8 addrspace(1)* null, i64 %11
  call void @_bal_mapping_init_member(i8 addrspace(1)* %9, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)* %12)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %13, i8 addrspace(1)** %x
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %15 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %14, i64 -5)
  store i8 addrspace(1)* %15, i8 addrspace(1)** %y
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %17 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root1, i8 addrspace(1)* %16)
  store i1 %17, i1* %2
  %18 = load i1, i1* %2
  br i1 %18, label %19, label %31
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  store i8 addrspace(1)* %20, i8 addrspace(1)** %y.1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %y.1
  %22 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %21, i64 0)
  %23 = addrspacecast i8 addrspace(1)* %22 to i8*
  %24 = ptrtoint i8* %23 to i64
  %25 = trunc i64 %24 to i1
  store i1 %25, i1* %3
  %26 = load i1, i1* %3
  store i1 %26, i1* %b
  %27 = load i1, i1* %b, !dbg !8
  %28 = zext i1 %27 to i64, !dbg !8
  %29 = or i64 %28, 72057594037927936, !dbg !8
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  br label %31
31:
  ret void
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-union/union1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 18, column: 8, scope: !5)
