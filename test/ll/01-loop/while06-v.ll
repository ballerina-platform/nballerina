@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i1
  %j = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  store i64 0, i64* %i
  br label %11
11:
  %12 = load i64, i64* %i
  %13 = icmp slt i64 %12, 5
  store i1 %13, i1* %1
  %14 = load i1, i1* %1
  br i1 %14, label %15, label %16
15:
  store i64 0, i64* %j
  br label %17
16:
  ret void
17:
  %18 = load i64, i64* %j
  %19 = load i64, i64* %i
  %20 = icmp slt i64 %18, %19
  store i1 %20, i1* %2
  %21 = load i1, i1* %2
  br i1 %21, label %22, label %28
22:
  %23 = load i64, i64* %j, !dbg !8
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %23), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %25 = load i64, i64* %j
  %26 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %25, i64 1)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %39, label %36
28:
  %29 = load i64, i64* %i
  %30 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %44, label %41
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = extractvalue {i64, i1} %26, 0
  store i64 %37, i64* %4
  %38 = load i64, i64* %4
  store i64 %38, i64* %j
  br label %17
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %40, i8 addrspace(1)** %6
  br label %32
41:
  %42 = extractvalue {i64, i1} %30, 0
  store i64 %42, i64* %5
  %43 = load i64, i64* %5
  store i64 %43, i64* %i
  br label %11
44:
  %45 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073), !dbg !7
  store i8 addrspace(1)* %45, i8 addrspace(1)** %6
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/while06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 12, scope: !5)
