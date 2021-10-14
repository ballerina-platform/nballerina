%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant %TypeTestVTable
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %m1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %m2 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %m2.1 = alloca i8 addrspace(1)*
  %n = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %29, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %10, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %11)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %12, i8 addrspace(1)** %m1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %m1
  %14 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %13, i64 -5)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %m2
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %m2
  %16 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root1, i64 0, i32 0
  %17 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %16, align 8
  %18 = call i1 %17(%TypeTestVTable* @_Bt04root1, i8 addrspace(1)* %15)
  store i1 %18, i1* %2
  %19 = load i1, i1* %2
  br i1 %19, label %20, label %26
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %m2
  store i8 addrspace(1)* %21, i8 addrspace(1)** %m2.1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %m2.1
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %24 = call i64 @_bal_mapping_set(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %36
26:
  ret void
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %m2.1
  %33 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %32, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  store i8 addrspace(1)* %33, i8 addrspace(1)** %3
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %34, i8 addrspace(1)** %n
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %n, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  br label %26
36:
  %37 = or i64 %24, 1792
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 %37), !dbg !7
  store i8 addrspace(1)* %38, i8 addrspace(1)** %5
  br label %27
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-bug/map5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 8, scope: !5)
