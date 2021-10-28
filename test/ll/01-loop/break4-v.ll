@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i1
  %5 = alloca i1
  %i.1 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %32, label %10
10:
  store i64 0, i64* %i
  br label %11
11:
  %12 = load i64, i64* %i
  %13 = icmp sge i64 %12, 0
  store i1 %13, i1* %1
  %14 = load i1, i1* %1
  br i1 %14, label %15, label %21
15:
  %16 = load i64, i64* %i, !dbg !8
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %18 = load i64, i64* %i
  %19 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %18, i64 1)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %40, label %34
21:
  ret void
22:
  %23 = load i64, i64* %i
  %24 = icmp eq i64 %23, 4
  store i1 %24, i1* %5
  %25 = load i1, i1* %5
  br i1 %25, label %26, label %28
26:
  %27 = load i64, i64* %i
  store i64 %27, i64* %i.1
  br label %21
28:
  br label %29
29:
  br label %11
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = extractvalue {i64, i1} %19, 0
  store i64 %35, i64* %3
  %36 = load i64, i64* %3
  store i64 %36, i64* %i
  %37 = load i64, i64* %i
  %38 = icmp sge i64 %37, 1
  store i1 %38, i1* %4
  %39 = load i1, i1* %4
  br i1 %39, label %22, label %29
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073), !dbg !7
  store i8 addrspace(1)* %41, i8 addrspace(1)** %6
  br label %30
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/break4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 8, scope: !5)
