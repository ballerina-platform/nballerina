@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare {i64, i1} @_bal_float_to_int(double) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %n = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %34, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %x
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 504403158265495552
  store i1 %17, i1* %1
  %18 = load i1, i1* %1
  br i1 %18, label %19, label %25
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %20)
  store i64 %21, i64* %x.1
  %22 = load i64, i64* %x.1
  %23 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %22, i64 1)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %40, label %36
25:
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %x
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %28 = addrspacecast i8 addrspace(1)* %27 to i8*
  %29 = ptrtoint i8* %28 to i64
  %30 = and i64 %29, 2233785415175766016
  %31 = icmp eq i64 %30, 576460752303423488
  br i1 %31, label %48, label %52
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = extractvalue {i64, i1} %23, 0
  store i64 %37, i64* %2
  %38 = load i64, i64* %2, !dbg !8
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  br label %25
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %41, i8 addrspace(1)** %7
  br label %32
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %44 = addrspacecast i8 addrspace(1)* %43 to i8*
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 504403158265495552
  br i1 %47, label %58, label %63
48:
  %49 = call double @_bal_tagged_to_float(i8 addrspace(1)* %27)
  %50 = call {i64, i1} @_bal_float_to_int(double %49)
  %51 = extractvalue {i64, i1} %50, 1
  br i1 %51, label %56, label %53
52:
  store i8 addrspace(1)* %27, i8 addrspace(1)** %4
  br label %42
53:
  %54 = extractvalue {i64, i1} %50, 0
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %54)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %4
  br label %42
56:
  %57 = call i8 addrspace(1)* @_bal_panic_construct(i64 3075), !dbg !7
  store i8 addrspace(1)* %57, i8 addrspace(1)** %7
  br label %32
58:
  %59 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %43)
  store i64 %59, i64* %5
  %60 = load i64, i64* %5
  store i64 %60, i64* %n
  %61 = load i64, i64* %n, !dbg !9
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %61), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %62), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !9
  ret void
63:
  %64 = call i8 addrspace(1)* @_bal_panic_construct(i64 3075), !dbg !7
  store i8 addrspace(1)* %64, i8 addrspace(1)** %7
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-type/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 8, scope: !5)
!9 = !DILocation(line: 13, column: 4, scope: !5)
