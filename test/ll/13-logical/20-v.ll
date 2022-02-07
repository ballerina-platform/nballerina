@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %20, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !10
  %10 = call i1 @_B04rootf(i8 addrspace(1)* %9), !dbg !10
  store i1 %10, i1* %1, !dbg !10
  %11 = load i1, i1* %1, !dbg !11
  %12 = zext i1 %11 to i64, !dbg !11
  %13 = or i64 %12, 72057594037927936, !dbg !11
  %14 = getelementptr i8, i8 addrspace(1)* null, i64 %13, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %15 = call i1 @_B04rootf(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620771439)), !dbg !12
  store i1 %15, i1* %3, !dbg !12
  %16 = load i1, i1* %3, !dbg !13
  %17 = zext i1 %16 to i64, !dbg !13
  %18 = or i64 %17, 72057594037927936, !dbg !13
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  ret void
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
define i1 @_B04rootf(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i64
  %_ = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %19, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %8 = addrspacecast i8 addrspace(1)* %7 to i8*
  %9 = ptrtoint i8* %8 to i64
  %10 = and i64 %9, 2233785415175766016
  %11 = icmp eq i64 %10, 504403158265495552
  store i1 %11, i1* %2
  %12 = load i1, i1* %2
  br i1 %12, label %13, label %16
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %15 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %14)
  store i64 %15, i64* %x.1
  br label %17
16:
  br label %17
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %18, i8 addrspace(1)** %_
  ret i1 1
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/20-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B04rootf", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 15, scope: !5)
!11 = !DILocation(line: 3, column: 4, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
