@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !10
  call void @_B_foo(i8 addrspace(1)* %8), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  call void @_B_foo(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504)), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %9 = zext i1 1 to i64, !dbg !12
  %10 = or i64 %9, 72057594037927936, !dbg !12
  %11 = getelementptr i8, i8 addrspace(1)* null, i64 %10, !dbg !12
  call void @_B_foo(i8 addrspace(1)* %11), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  ret void
12:
  %13 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %x.2 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %x.3 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %x.4 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %x.5 = alloca i1
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %x.6 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %73, label %17
17:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = addrspacecast i8 addrspace(1)* %18 to i8*
  %20 = ptrtoint i8* %19 to i64
  %21 = and i64 %20, 2233785415175766016
  %22 = icmp eq i64 %21, 504403158265495552
  store i1 %22, i1* %2
  %23 = load i1, i1* %2
  br i1 %23, label %24, label %30
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %26 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %25)
  store i64 %26, i64* %x.1
  %27 = load i64, i64* %x.1
  %28 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %27, i64 1)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %79, label %75
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x.2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %33 = addrspacecast i8 addrspace(1)* %32 to i8*
  %34 = ptrtoint i8* %33 to i64
  %35 = and i64 %34, 2233785415175766016
  %36 = icmp eq i64 %35, 720575940379279360
  store i1 %36, i1* %5
  %37 = load i1, i1* %5
  br i1 %37, label %38, label %46
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %39, i8 addrspace(1)** %x.3
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  %41 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %40, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630843948))
  store i8 addrspace(1)* %41, i8 addrspace(1)** %6
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  %44 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %42, i8 addrspace(1)* %43)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %7
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  br label %69
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %47, i8 addrspace(1)** %x.4
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  %49 = addrspacecast i8 addrspace(1)* %48 to i8*
  %50 = ptrtoint i8* %49 to i64
  %51 = and i64 %50, 2233785415175766016
  %52 = icmp eq i64 %51, 72057594037927936
  store i1 %52, i1* %9
  %53 = load i1, i1* %9
  br i1 %53, label %54, label %65
54:
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  %56 = addrspacecast i8 addrspace(1)* %55 to i8*
  %57 = ptrtoint i8* %56 to i64
  %58 = trunc i64 %57 to i1
  store i1 %58, i1* %x.5
  %59 = load i1, i1* %x.5
  %60 = xor i1 1, %59
  store i1 %60, i1* %10
  %61 = load i1, i1* %10, !dbg !16
  %62 = zext i1 %61 to i64, !dbg !16
  %63 = or i64 %62, 72057594037927936, !dbg !16
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !16
  br label %68
65:
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  store i8 addrspace(1)* %66, i8 addrspace(1)** %x.6
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %x.6, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !17
  br label %68
68:
  br label %69
69:
  br label %70
70:
  ret void
71:
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  call void @_bal_panic(i8 addrspace(1)* %72)
  unreachable
73:
  %74 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %74)
  unreachable
75:
  %76 = extractvalue {i64, i1} %28, 0
  store i64 %76, i64* %3
  %77 = load i64, i64* %3, !dbg !14
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %77), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !14
  br label %70
79:
  %80 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073), !dbg !13
  store i8 addrspace(1)* %80, i8 addrspace(1)** %13
  br label %71
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-narrow/02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 12, column: 8, scope: !7)
!15 = !DILocation(line: 15, column: 8, scope: !7)
!16 = !DILocation(line: 18, column: 8, scope: !7)
!17 = !DILocation(line: 21, column: 8, scope: !7)
