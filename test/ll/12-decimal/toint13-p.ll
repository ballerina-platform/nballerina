@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541050498609), i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %9)
  %11 = extractvalue {i8 addrspace(1)*, i1} %10, 1
  br i1 %11, label %23, label %16
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = extractvalue {i8 addrspace(1)*, i1} %10, 0
  store i8 addrspace(1)* %17, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %19 = addrspacecast i8 addrspace(1)* %18 to i8*
  %20 = ptrtoint i8* %19 to i64
  %21 = and i64 %20, 2233785415175766016
  %22 = icmp eq i64 %21, 504403158265495552
  br i1 %22, label %25, label %29
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 1025), !dbg !7
  store i8 addrspace(1)* %24, i8 addrspace(1)** %4
  br label %12
25:
  %26 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %18)
  store i64 %26, i64* %2
  %27 = load i64, i64* %2, !dbg !8
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  ret void
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 1027), !dbg !7
  store i8 addrspace(1)* %30, i8 addrspace(1)** %4
  br label %12
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/toint13-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
