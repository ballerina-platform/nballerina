@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %f = alloca double
  %1 = alloca i8 addrspace(1)*
  %2 = alloca double
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  %9 = call i8 addrspace(1)* @_B_g(), !dbg !10
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1, !dbg !10
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 576460752303423488
  br i1 %14, label %19, label %24
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call double @_bal_tagged_to_float(i8 addrspace(1)* %10)
  store double %20, double* %2
  %21 = load double, double* %2
  store double %21, double* %f
  %22 = load double, double* %f, !dbg !11
  %23 = call i8 addrspace(1)* @_bal_float_to_tagged(double %22), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !11
  ret void
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !9
  store i8 addrspace(1)* %25, i8 addrspace(1)** %4
  br label %15
}
define internal i8 addrspace(1)* @_B_g() !dbg !7 {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %6, label %4
4:
  %5 = call i8 addrspace(1)* @_bal_float_to_tagged(double 4.86)
  ret i8 addrspace(1)* %5
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/15-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"g", linkageName:"_B_g", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 21, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
