@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %n = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 1, i64* %n
  %8 = load i64, i64* %n
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %8)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %19, label %15
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, i64* %1
  %17 = load i64, i64* %1, !dbg !10
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17), !dbg !10
  call void @_B_foo(i8 addrspace(1)* %18), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  ret void
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 1537), !dbg !9
  store i8 addrspace(1)* %20, i8 addrspace(1)** %3
  br label %11
}
define internal void @_B_foo(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i1
  %v.1 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %v.2 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %25, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 504403158265495552
  br i1 %14, label %27, label %30
clause.0:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %16 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  store i64 %16, i64* %v.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541272877421)), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !12
  br label %24
clause.1:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %18 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %17)
  store i64 %18, i64* %v.2
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621753192)), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !13
  br label %24
pattern.0:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %20 = addrspacecast i8 addrspace(1)* %19 to i8*
  %21 = ptrtoint i8* %20 to i64
  %22 = and i64 %21, 2233785415175766016
  %23 = icmp eq i64 %22, 504403158265495552
  br i1 %23, label %33, label %36
pattern.1:
  br label %24
24:
  ret void
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %10)
  %29 = icmp eq i64 %28, 1
  store i1 %29, i1* %2
  br label %31
30:
  store i1 0, i1* %2
  br label %31
31:
  %32 = load i1, i1* %2
  br i1 %32, label %clause.0, label %pattern.0
33:
  %34 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  %35 = icmp eq i64 %34, -1
  store i1 %35, i1* %3
  br label %37
36:
  store i1 0, i1* %3
  br label %37
37:
  %38 = load i1, i1* %3
  br i1 %38, label %clause.1, label %pattern.1
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-match/08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 6, column: 4, scope: !5)
!11 = !DILocation(line: 0, column: 0, scope: !7)
!12 = !DILocation(line: 12, column: 12, scope: !7)
!13 = !DILocation(line: 15, column: 12, scope: !7)
