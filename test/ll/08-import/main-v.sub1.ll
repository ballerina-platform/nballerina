@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define i64 @_B0m4root4sub1main(i64 %0) !dbg !5 {
  %n = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, i64* %n
  %8 = load i64, i64* %n
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, i64* %2
  %17 = load i64, i64* %2
  ret i64 %17
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 513), !dbg !7
  store i8 addrspace(1)* %19, i8 addrspace(1)** %3
  br label %11
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/08-import/main-v.modules/sub1/main1.bal", directory:"../../../compiler/testSuite/08-import/main-v.modules/sub1")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B0m4root4sub1main", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
