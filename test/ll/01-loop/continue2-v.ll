@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i1
  %i.1 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %26, label %9
9:
  store i64 0, i64* %i
  br label %10
10:
  %11 = load i64, i64* %i
  %12 = icmp slt i64 %11, 4
  store i1 %12, i1* %1
  %13 = load i1, i1* %1
  br i1 %13, label %14, label %18
14:
  %15 = load i64, i64* %i
  %16 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %15, i64 1)
  %17 = extractvalue {i64, i1} %16, 1
  br i1 %17, label %34, label %28
18:
  ret void
19:
  %20 = load i64, i64* %i
  store i64 %20, i64* %i.1
  br label %10
21:
  %22 = load i64, i64* %i, !dbg !8
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  br label %10
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
28:
  %29 = extractvalue {i64, i1} %16, 0
  store i64 %29, i64* %2
  %30 = load i64, i64* %2
  store i64 %30, i64* %i
  %31 = load i64, i64* %i
  %32 = icmp eq i64 %31, 2
  store i1 %32, i1* %3
  %33 = load i1, i1* %3
  br i1 %33, label %19, label %21
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793), !dbg !7
  store i8 addrspace(1)* %35, i8 addrspace(1)** %5
  br label %24
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-loop/continue2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 14, column: 8, scope: !5)
