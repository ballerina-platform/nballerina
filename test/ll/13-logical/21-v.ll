@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !10
  %10 = call i8 addrspace(1)* @_B_f(i8 addrspace(1)* %9), !dbg !10
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1, !dbg !10
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %11), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %12 = call i8 addrspace(1)* @_B_f(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504)), !dbg !12
  store i8 addrspace(1)* %12, i8 addrspace(1)** %3, !dbg !12
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
define internal i8 addrspace(1)* @_B_f(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i64
  %x.2 = alloca i64
  %_ = alloca i64
  %3 = alloca i64
  %x.3 = alloca i8 addrspace(1)*
  %_.1 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %37, label %9
9:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 504403158265495552
  store i1 %14, i1* %2
  %15 = load i1, i1* %2
  br i1 %15, label %16, label %19
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %18 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %17)
  store i64 %18, i64* %x.1
  br label %20
19:
  br label %20
20:
  %21 = load i1, i1* %2
  br i1 %21, label %22, label %29
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %24 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %23)
  store i64 %24, i64* %x.2
  %25 = load i64, i64* %x.2
  store i64 %25, i64* %_
  %26 = load i64, i64* %x.2
  %27 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %26, i64 1)
  %28 = extractvalue {i64, i1} %27, 1
  br i1 %28, label %43, label %39
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %30, i8 addrspace(1)** %x.3
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  store i8 addrspace(1)* %31, i8 addrspace(1)** %_.1
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  %33 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %32, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098305485593343776))
  store i8 addrspace(1)* %33, i8 addrspace(1)** %4
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  ret i8 addrspace(1)* %34
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 1796), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
39:
  %40 = extractvalue {i64, i1} %27, 0
  store i64 %40, i64* %3
  %41 = load i64, i64* %3
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %41)
  ret i8 addrspace(1)* %42
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !14
  store i8 addrspace(1)* %44, i8 addrspace(1)** %5
  br label %35
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/21-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B_f", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 15, scope: !5)
!11 = !DILocation(line: 3, column: 4, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 4, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
