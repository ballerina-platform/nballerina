@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [22 x i8] c"9223372036854775807.6\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %d = alloca i8 addrspace(1)*
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([22 x i8]* @.dec0 to i8*))
  store i8 addrspace(1)* %8, i8 addrspace(1)** %d
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %10 = call {i64, i1} @_bal_decimal_to_int(i8 addrspace(1)* %9)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %20, label %16
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = extractvalue {i64, i1} %10, 0
  store i64 %17, i64* %1
  %18 = load i64, i64* %1, !dbg !8
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  ret void
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 1025), !dbg !7
  store i8 addrspace(1)* %21, i8 addrspace(1)** %3
  br label %12
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/toint12-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
