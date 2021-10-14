%TypeTestVTable = type {i1(%TypeTestVTable*, i8 addrspace(1)*)*}
@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant %TypeTestVTable
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_exactify(i8 addrspace(1)*, {i32}*) readonly
define void @_B04rootmain() !dbg !5 {
  %m1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %m1.1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %m1.2 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %37, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %11, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %12)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %13, i8 addrspace(1)** %m1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %m1
  %15 = getelementptr %TypeTestVTable, %TypeTestVTable* @_Bt04root1, i64 0, i32 0
  %16 = load i1(%TypeTestVTable*, i8 addrspace(1)*)*, i1(%TypeTestVTable*, i8 addrspace(1)*)** %15, align 8
  %17 = call i1 %16(%TypeTestVTable* @_Bt04root1, i8 addrspace(1)* %14)
  store i1 %17, i1* %2
  %18 = load i1, i1* %2
  br i1 %18, label %19, label %33
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %m1
  store i8 addrspace(1)* %20, i8 addrspace(1)** %m1.1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %m1.1
  %22 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  store i8 addrspace(1)* %22, i8 addrspace(1)** %3
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %23, i8 addrspace(1)** %x
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 0
  store i1 %28, i1* %4
  %29 = load i1, i1* %4
  br i1 %29, label %30, label %32
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621228910)), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  br label %32
32:
  br label %36
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %m1
  %35 = call i8 addrspace(1)* @_bal_mapping_exactify(i8 addrspace(1)* %34, {i32}* @_Bi04root0)
  store i8 addrspace(1)* %35, i8 addrspace(1)** %m1.2
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630864238)), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !9
  br label %36
36:
  ret void
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-bug/map3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 12, scope: !5)
!9 = !DILocation(line: 13, column: 8, scope: !5)
