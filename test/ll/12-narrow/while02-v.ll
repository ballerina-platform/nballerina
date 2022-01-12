@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"unreached\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %count = alloca i8 addrspace(1)*
  %1 = alloca i1
  %count.1 = alloca i64
  %i = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i1
  %count.2 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %51, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %count
  br label %13
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %count
  %15 = addrspacecast i8 addrspace(1)* %14 to i8*
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 2233785415175766016
  %18 = icmp eq i64 %17, 504403158265495552
  store i1 %18, i1* %1
  %19 = load i1, i1* %1
  br i1 %19, label %20, label %29
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %count
  %22 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %21)
  store i64 %22, i64* %count.1
  %23 = load i64, i64* %count.1
  store i64 %23, i64* %i
  %24 = load i64, i64* %i, !dbg !8
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %24), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %26 = load i64, i64* %count.1
  %27 = icmp sgt i64 %26, 1
  store i1 %27, i1* %3
  %28 = load i1, i1* %3
  br i1 %28, label %36, label %40
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %count
  %31 = addrspacecast i8 addrspace(1)* %30 to i8*
  %32 = ptrtoint i8* %31 to i64
  %33 = and i64 %32, 2233785415175766016
  %34 = icmp eq i64 %33, 504403158265495552
  store i1 %34, i1* %5
  %35 = load i1, i1* %5
  br i1 %35, label %45, label %48
36:
  %37 = load i64, i64* %count.1
  %38 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %37, i64 1)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %57, label %53
40:
  %41 = zext i1 0 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42
  store i8 addrspace(1)* %43, i8 addrspace(1)** %count
  br label %44
44:
  br label %13
45:
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %count
  %47 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %46)
  store i64 %47, i64* %count.2
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !9
  br label %48
48:
  ret void
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %50)
  unreachable
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %52)
  unreachable
53:
  %54 = extractvalue {i64, i1} %38, 0
  store i64 %54, i64* %4
  %55 = load i64, i64* %4
  %56 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %55)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %count
  br label %44
57:
  %58 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !7
  store i8 addrspace(1)* %58, i8 addrspace(1)** %7
  br label %49
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/while02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 6, scope: !5)
!9 = !DILocation(line: 19, column: 6, scope: !5)
