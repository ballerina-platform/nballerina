@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %18, label %9
9:
  %10 = call i8 addrspace(1)* @_B04rootf(), !dbg !10
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1, !dbg !10
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 504403158265495552
  br i1 %15, label %20, label %26
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %11)
  store i64 %21, i64* %2
  %22 = load i64, i64* %2
  store i64 %22, i64* %i
  %23 = load i64, i64* %i, !dbg !11
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %23), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !11
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 11), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !12
  ret void
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !9
  store i8 addrspace(1)* %27, i8 addrspace(1)** %5
  br label %16
}
define i8 addrspace(1)* @_B04rootf() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %6, label %4
4:
  %5 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  ret i8 addrspace(1)* %5
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B04rootf", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 17, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
