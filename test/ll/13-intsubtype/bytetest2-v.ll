@_bal_stack_guard = external global i8*
@.dec0 = internal unnamed_addr constant [2 x i8] c"0\00", align 8
@_Bt04root0 = external constant {i32, i32, [0 x i8*]}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i1 @_bal_type_contains({i32, i32, [0 x i8*]}*, i8 addrspace(1)*) readonly
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
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %34, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !10
  call void @_B_b(i8 addrspace(1)* %20), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !11
  call void @_B_b(i8 addrspace(1)* %21), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 254), !dbg !12
  call void @_B_b(i8 addrspace(1)* %22), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 255), !dbg !13
  call void @_B_b(i8 addrspace(1)* %23), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 128), !dbg !14
  call void @_B_b(i8 addrspace(1)* %24), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 127), !dbg !15
  call void @_B_b(i8 addrspace(1)* %25), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -1), !dbg !16
  call void @_B_b(i8 addrspace(1)* %26), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !16
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 256), !dbg !17
  call void @_B_b(i8 addrspace(1)* %27), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 257), !dbg !18
  call void @_B_b(i8 addrspace(1)* %28), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !18
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -2), !dbg !19
  call void @_B_b(i8 addrspace(1)* %29), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 65536), !dbg !20
  call void @_B_b(i8 addrspace(1)* %30), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !20
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4294967296), !dbg !21
  call void @_B_b(i8 addrspace(1)* %31), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  call void @_B_b(i8 addrspace(1)* null), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !22
  %32 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.0), !dbg !23
  call void @_B_b(i8 addrspace(1)* %32), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %33 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*)), !dbg !24
  call void @_B_b(i8 addrspace(1)* %33), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !24
  ret void
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
}
define internal void @_B_b(i8 addrspace(1)* %0) !dbg !7 {
  %n = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %n
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %9 = call i1 @_bal_type_contains({i32, i32, [0 x i8*]}* @_Bt04root0, i8 addrspace(1)* %8)
  store i1 %9, i1* %2
  %10 = load i1, i1* %2, !dbg !26
  %11 = zext i1 %10 to i64, !dbg !26
  %12 = or i64 %11, 72057594037927936, !dbg !26
  %13 = getelementptr i8, i8 addrspace(1)* null, i64 %12, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !26
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 5380), !dbg !25
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/bytetest2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"b", linkageName:"_B_b", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 4, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 4, scope: !5)
!16 = !DILocation(line: 10, column: 4, scope: !5)
!17 = !DILocation(line: 11, column: 4, scope: !5)
!18 = !DILocation(line: 12, column: 4, scope: !5)
!19 = !DILocation(line: 13, column: 4, scope: !5)
!20 = !DILocation(line: 14, column: 4, scope: !5)
!21 = !DILocation(line: 15, column: 4, scope: !5)
!22 = !DILocation(line: 16, column: 4, scope: !5)
!23 = !DILocation(line: 17, column: 4, scope: !5)
!24 = !DILocation(line: 18, column: 4, scope: !5)
!25 = !DILocation(line: 0, column: 0, scope: !7)
!26 = !DILocation(line: 22, column: 4, scope: !7)
