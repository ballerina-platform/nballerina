@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !10
  %10 = call i8 addrspace(1)* @_B_next(i8 addrspace(1)* %9), !dbg !10
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1, !dbg !10
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %11), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %12 = zext i1 0 to i64, !dbg !12
  %13 = or i64 %12, 72057594037927936, !dbg !12
  %14 = getelementptr i8, i8 addrspace(1)* null, i64 %13, !dbg !12
  %15 = call i8 addrspace(1)* @_B_next(i8 addrspace(1)* %14), !dbg !12
  store i8 addrspace(1)* %15, i8 addrspace(1)** %3, !dbg !12
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  ret void
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
define internal i8 addrspace(1)* @_B_next(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i64
  %3 = alloca i64
  %x.2 = alloca i1
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %35, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 504403158265495552
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %16, label %22
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %18 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %17)
  store i64 %18, i64* %x.1
  %19 = load i64, i64* %x.1
  %20 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %19, i64 1)
  %21 = extractvalue {i64, i1} %20, 1
  br i1 %21, label %41, label %37
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %24 = addrspacecast i8 addrspace(1)* %23 to i8*
  %25 = ptrtoint i8* %24 to i64
  %26 = trunc i64 %25 to i1
  store i1 %26, i1* %x.2
  %27 = load i1, i1* %x.2
  %28 = xor i1 1, %27
  store i1 %28, i1* %4
  %29 = load i1, i1* %4
  %30 = zext i1 %29 to i64
  %31 = or i64 %30, 72057594037927936
  %32 = getelementptr i8, i8 addrspace(1)* null, i64 %31
  ret i8 addrspace(1)* %32
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = extractvalue {i64, i1} %20, 0
  store i64 %38, i64* %3
  %39 = load i64, i64* %3
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39)
  ret i8 addrspace(1)* %40
41:
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !14
  store i8 addrspace(1)* %42, i8 addrspace(1)** %5
  br label %33
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if24-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"next", linkageName:"_B_next", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
