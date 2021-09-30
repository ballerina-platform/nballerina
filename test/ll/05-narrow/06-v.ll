@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %29, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !10
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !10
  %13 = call i64 @_B_add(i8 addrspace(1)* %11, i8 addrspace(1)* %12), !dbg !10
  store i64 %13, i64* %1, !dbg !10
  %14 = load i64, i64* %1, !dbg !11
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %14), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !12
  %17 = zext i1 0 to i64, !dbg !12
  %18 = or i64 %17, 72057594037927936, !dbg !12
  %19 = getelementptr i8, i8 addrspace(1)* null, i64 %18, !dbg !12
  %20 = call i64 @_B_add(i8 addrspace(1)* %16, i8 addrspace(1)* %19), !dbg !12
  store i64 %20, i64* %3, !dbg !12
  %21 = load i64, i64* %3, !dbg !13
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %23 = zext i1 0 to i64, !dbg !14
  %24 = or i64 %23, 72057594037927936, !dbg !14
  %25 = getelementptr i8, i8 addrspace(1)* null, i64 %24, !dbg !14
  %26 = call i64 @_B_add(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)* %25), !dbg !14
  store i64 %26, i64* %5, !dbg !14
  %27 = load i64, i64* %5, !dbg !15
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  ret void
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
}
define internal i64 @_B_add(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %n = alloca i8 addrspace(1)*
  %3 = alloca i1
  %n.1 = alloca i64
  %4 = alloca i1
  %y.1 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %41, label %12
12:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  store i8 addrspace(1)* %1, i8 addrspace(1)** %y
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %13, i8 addrspace(1)** %n
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %15 = addrspacecast i8 addrspace(1)* %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 504403158265495552
  store i1 %18, i1* %3
  %19 = load i1, i1* %3
  br i1 %19, label %20, label %38
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %22 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %21)
  store i64 %22, i64* %n.1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %24 = addrspacecast i8 addrspace(1)* %23 to i8*
  %25 = ptrtoint i8* %24 to i64
  %26 = and i64 %25, 2233785415175766016
  %27 = icmp eq i64 %26, 504403158265495552
  store i1 %27, i1* %4
  %28 = load i1, i1* %4
  br i1 %28, label %29, label %36
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %31 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %30)
  store i64 %31, i64* %y.1
  %32 = load i64, i64* %n.1
  %33 = load i64, i64* %y.1
  %34 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %32, i64 %33)
  %35 = extractvalue {i64, i1} %34, 1
  br i1 %35, label %52, label %43
36:
  %37 = load i64, i64* %n.1
  ret i64 %37
38:
  ret i64 -1
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
41:
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %42)
  unreachable
43:
  %44 = extractvalue {i64, i1} %34, 0
  store i64 %44, i64* %5
  %45 = load i64, i64* %5
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %45)
  store i8 addrspace(1)* %46, i8 addrspace(1)** %n
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %48 = addrspacecast i8 addrspace(1)* %47 to i8*
  %49 = ptrtoint i8* %48 to i64
  %50 = and i64 %49, 2233785415175766016
  %51 = icmp eq i64 %50, 576460752303423488
  br i1 %51, label %60, label %64
52:
  %53 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !16
  store i8 addrspace(1)* %53, i8 addrspace(1)** %8
  br label %39
54:
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %56 = addrspacecast i8 addrspace(1)* %55 to i8*
  %57 = ptrtoint i8* %56 to i64
  %58 = and i64 %57, 2233785415175766016
  %59 = icmp eq i64 %58, 504403158265495552
  br i1 %59, label %70, label %73
60:
  %61 = call double @_bal_tagged_to_float(i8 addrspace(1)* %47)
  %62 = call {i64, i1} @_bal_float_to_int(double %61)
  %63 = extractvalue {i64, i1} %62, 1
  br i1 %63, label %68, label %65
64:
  store i8 addrspace(1)* %47, i8 addrspace(1)** %6
  br label %54
65:
  %66 = extractvalue {i64, i1} %62, 0
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66)
  store i8 addrspace(1)* %67, i8 addrspace(1)** %6
  br label %54
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !16
  store i8 addrspace(1)* %69, i8 addrspace(1)** %8
  br label %39
70:
  %71 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %55)
  store i64 %71, i64* %7
  %72 = load i64, i64* %7
  ret i64 %72
73:
  %74 = call i8 addrspace(1)* @_bal_panic_construct(i64 3843), !dbg !16
  store i8 addrspace(1)* %74, i8 addrspace(1)** %8
  br label %39
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-narrow/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"add", linkageName:"_B_add", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
