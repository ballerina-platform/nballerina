@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [7 x i8] c"1.1E+2\00", align 8
@.dec1 = internal unnamed_addr constant [8 x i8] c"9.9E+23\00", align 8
@.dec2 = internal unnamed_addr constant [29 x i8] c"9.9000000000000000000011E+23\00", align 8
@.dec3 = internal unnamed_addr constant [30 x i8] c"-9.8999999999999999999989E+23\00", align 8
@.dec4 = internal unnamed_addr constant [10 x i8] c"1.089E+26\00", align 8
@.dec5 = internal unnamed_addr constant [6 x i8] c"9E+21\00", align 8
@.dec6 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %25, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec0 to i8*)), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %16 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec0 to i8*)), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %17 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec1 to i8*)), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %18 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([29 x i8]* @.dec2 to i8*)), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %19 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([29 x i8]* @.dec2 to i8*)), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  %20 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([30 x i8]* @.dec3 to i8*)), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  %21 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([30 x i8]* @.dec3 to i8*)), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !14
  %22 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([10 x i8]* @.dec4 to i8*)), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  %23 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([6 x i8]* @.dec5 to i8*)), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !16
  %24 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec6 to i8*)), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  ret void
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/const7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 15, column: 4, scope: !5)
!9 = !DILocation(line: 16, column: 4, scope: !5)
!10 = !DILocation(line: 17, column: 4, scope: !5)
!11 = !DILocation(line: 18, column: 4, scope: !5)
!12 = !DILocation(line: 19, column: 4, scope: !5)
!13 = !DILocation(line: 20, column: 4, scope: !5)
!14 = !DILocation(line: 21, column: 4, scope: !5)
!15 = !DILocation(line: 22, column: 4, scope: !5)
!16 = !DILocation(line: 23, column: 4, scope: !5)
!17 = !DILocation(line: 24, column: 4, scope: !5)
