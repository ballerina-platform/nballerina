@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_tagged_clear_exact(i8 addrspace(1)*) readnone
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %v3 = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %18, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 255)
  store i8 addrspace(1)* %8, i8 addrspace(1)** %v1
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %10 = call i8 addrspace(1)* @_bal_tagged_clear_exact(i8 addrspace(1)* %9)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %v2
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 504403158265495552
  br i1 %15, label %20, label %25
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %11)
  store i64 %21, i64* %1
  %22 = load i64, i64* %1
  store i64 %22, i64* %v3
  %23 = load i64, i64* %v3, !dbg !8
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %23), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  ret void
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 1539), !dbg !7
  store i8 addrspace(1)* %26, i8 addrspace(1)** %3
  br label %16
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/10-union/exact1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
