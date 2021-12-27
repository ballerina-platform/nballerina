@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
@.dec1 = internal unnamed_addr constant [5 x i8] c"1001\00", align 8
@.dec2 = internal unnamed_addr constant [35 x i8] c"2469135780246913578024691357802465\00", align 8
@.dec3 = internal unnamed_addr constant [40 x i8] c"2.469135780246913578024691357802465E+34\00", align 8
@.dec4 = internal unnamed_addr constant [40 x i8] c"1.358024679135802467913580246791354E+34\00", align 8
@.dec5 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999999E+6144\00", align 8
@.dec6 = internal unnamed_addr constant [42 x i8] c"9.999999999999999999999999999999997E+6144\00", align 8
@.dec7 = internal unnamed_addr constant [43 x i8] c"-9.999999999999999999999999999999999E+6144\00", align 8
@.dec8 = internal unnamed_addr constant [43 x i8] c"-9.999999999999999999999999999999998E+6144\00", align 8
@.dec9 = internal unnamed_addr constant [8 x i8] c"3E-6143\00", align 8
@.dec10 = internal unnamed_addr constant [8 x i8] c"1E-6143\00", align 8
@.dec11 = internal unnamed_addr constant [10 x i8] c"1.0E-6142\00", align 8
@.dec12 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
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
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %33, label %18
18:
  %19 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*)), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %20 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec1 to i8*)), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  %21 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([35 x i8]* @.dec2 to i8*)), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  %22 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([40 x i8]* @.dec3 to i8*)), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %23 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([40 x i8]* @.dec4 to i8*)), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  %24 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec5 to i8*)), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %24), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  %25 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([42 x i8]* @.dec6 to i8*)), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !14
  %26 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([43 x i8]* @.dec7 to i8*)), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !15
  %27 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([43 x i8]* @.dec8 to i8*)), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !16
  %28 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec9 to i8*)), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  %29 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec9 to i8*)), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !18
  %30 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec10 to i8*)), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !19
  %31 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([10 x i8]* @.dec11 to i8*)), !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !20
  %32 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec12 to i8*)), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !21
  ret void
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/add1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 4, scope: !5)
!9 = !DILocation(line: 4, column: 4, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 10, column: 4, scope: !5)
!16 = !DILocation(line: 11, column: 4, scope: !5)
!17 = !DILocation(line: 12, column: 4, scope: !5)
!18 = !DILocation(line: 13, column: 4, scope: !5)
!19 = !DILocation(line: 14, column: 4, scope: !5)
!20 = !DILocation(line: 15, column: 4, scope: !5)
!21 = !DILocation(line: 16, column: 4, scope: !5)
