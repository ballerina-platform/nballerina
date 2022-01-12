@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare {i8 addrspace(1)*, i64} @_bal_convert_to_decimal(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %x2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %17, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.2)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %x1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x1
  %12 = call {i8 addrspace(1)*, i64} @_bal_convert_to_decimal(i8 addrspace(1)* %11)
  %13 = extractvalue {i8 addrspace(1)*, i64} %12, 1
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %19
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = extractvalue {i8 addrspace(1)*, i64} %12, 0
  store i8 addrspace(1)* %20, i8 addrspace(1)** %1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.3)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %x2
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x2
  %24 = call {i8 addrspace(1)*, i64} @_bal_convert_to_decimal(i8 addrspace(1)* %23)
  %25 = extractvalue {i8 addrspace(1)*, i64} %24, 1
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %30
27:
  %28 = or i64 %13, 1024
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 %28), !dbg !7
  store i8 addrspace(1)* %29, i8 addrspace(1)** %5
  br label %15
30:
  %31 = extractvalue {i8 addrspace(1)*, i64} %24, 0
  store i8 addrspace(1)* %31, i8 addrspace(1)** %3
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  ret void
33:
  %34 = or i64 %25, 1792
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 %34), !dbg !7
  store i8 addrspace(1)* %35, i8 addrspace(1)** %5
  br label %15
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/fromunion1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
