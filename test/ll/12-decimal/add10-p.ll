@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999999E+6144\00", align 8
@.dec1 = internal unnamed_addr constant [8 x i8] c"1E+6111\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca i8 addrspace(1)*
  %d2 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %17, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %8, i8 addrspace(1)** %d1
  %9 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec1 to i8*))
  store i8 addrspace(1)* %9, i8 addrspace(1)** %d2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %d1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %d2
  %12 = call {i8 addrspace(1)*, i64} @_bal_decimal_add(i8 addrspace(1)* %10, i8 addrspace(1)* %11)
  %13 = extractvalue {i8 addrspace(1)*, i64} %12, 1
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %19
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %3
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
  ret void
22:
  %23 = or i64 %13, 1280
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 %23), !dbg !7
  store i8 addrspace(1)* %24, i8 addrspace(1)** %3
  br label %15
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/add10-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
