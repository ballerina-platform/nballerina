@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 14, i16 14, [20 x i8] c"decimal string\00\00\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %18, label %8
8:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = call i8 addrspace(1)* @_bal_convert_to_float(i8 addrspace(1)* %9)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 576460752303423488
  br i1 %15, label %20, label %24
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call double @_bal_tagged_to_float(i8 addrspace(1)* %11)
  store double %21, double* %2
  %22 = load double, double* %2, !dbg !8
  %23 = call i8 addrspace(1)* @_bal_float_to_tagged(double %22), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  ret void
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !7
  store i8 addrspace(1)* %25, i8 addrspace(1)** %4
  br label %16
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/tofloat4-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
