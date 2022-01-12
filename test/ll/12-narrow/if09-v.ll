@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %r = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  %7 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %8 = zext i1 1 to i64
  %9 = or i64 %8, 72057594037927936
  %10 = getelementptr i8, i8 addrspace(1)* null, i64 %9
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090), i8 addrspace(1)* %10)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %r
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %r, !dbg !10
  call void @_B_func(i8 addrspace(1)* %12), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal void @_B_func(i8 addrspace(1)* %0) !dbg !7 {
  %r = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %x.1 = alloca i64
  %x.2 = alloca i8 addrspace(1)*
  %bf1 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %bf2 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %37, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %r
  %11 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.1)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %r
  %13 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %12, i64 0)
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = trunc i64 %15 to i1
  store i1 %16, i1* %2
  %17 = load i1, i1* %2
  %18 = icmp eq i1 %17, 1
  store i1 %18, i1* %3
  %19 = load i1, i1* %3
  br i1 %19, label %20, label %34
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %22 = addrspacecast i8 addrspace(1)* %21 to i8*
  %23 = ptrtoint i8* %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 504403158265495552
  store i1 %25, i1* %4
  %26 = load i1, i1* %4
  br i1 %26, label %27, label %30
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %29 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %28)
  store i64 %29, i64* %x.1
  ret void
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x.2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %32, i8 addrspace(1)** %bf1
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %bf1, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  br label %34
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %35, i8 addrspace(1)** %bf2
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %bf2, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  ret void
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if09-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"func", linkageName:"_B_func", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 9, column: 4, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 19, column: 8, scope: !7)
!13 = !DILocation(line: 23, column: 4, scope: !7)
