@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"negative\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
define void @_B04rootmain() !dbg !5 {
  %result = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  %9 = call i8 addrspace(1)* @_B_positive(i64 -1), !dbg !12
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1, !dbg !12
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %result
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !13
  call void @_B_display(i8 addrspace(1)* %11), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  %12 = call i8 addrspace(1)* @_B_positive(i64 4), !dbg !14
  store i8 addrspace(1)* %12, i8 addrspace(1)** %3, !dbg !14
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %13, i8 addrspace(1)** %result
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !15
  call void @_B_display(i8 addrspace(1)* %14), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !15
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
define internal void @_B_display(i8 addrspace(1)* %0) !dbg !7 {
  %result = alloca i8 addrspace(1)*
  %2 = alloca i1
  %result.1 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %result.2 = alloca i8 addrspace(1)*
  %e = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %31, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %result
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %12 = addrspacecast i8 addrspace(1)* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 2233785415175766016
  %15 = icmp eq i64 %14, 504403158265495552
  store i1 %15, i1* %2
  %16 = load i1, i1* %2
  br i1 %16, label %17, label %24
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  %19 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %18)
  store i64 %19, i64* %result.1
  %20 = load i64, i64* %result.1
  %21 = load i64, i64* %result.1
  %22 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %20, i64 %21)
  %23 = extractvalue {i64, i1} %22, 1
  br i1 %23, label %37, label %33
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  store i8 addrspace(1)* %25, i8 addrspace(1)** %result.2
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %result.2
  store i8 addrspace(1)* %26, i8 addrspace(1)** %e
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %e, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !18
  br label %28
28:
  ret void
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = extractvalue {i64, i1} %22, 0
  store i64 %34, i64* %3
  %35 = load i64, i64* %3, !dbg !17
  %36 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %35), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !17
  br label %28
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !16
  store i8 addrspace(1)* %38, i8 addrspace(1)** %6
  br label %29
}
define internal i8 addrspace(1)* @_B_positive(i64 %0) !dbg !9 {
  %n = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %17, label %7
7:
  store i64 %0, i64* %n
  %8 = load i64, i64* %n
  %9 = icmp sge i64 %8, 0
  store i1 %9, i1* %2
  %10 = load i1, i1* %2
  br i1 %10, label %11, label %14
11:
  %12 = load i64, i64* %n
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %12)
  ret i8 addrspace(1)* %13
14:
  %15 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i64 26), !dbg !19
  store i8 addrspace(1)* %15, i8 addrspace(1)** %3, !dbg !19
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  ret i8 addrspace(1)* %16
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 5380), !dbg !19
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/6-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"display", linkageName:"_B_display", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"positive", linkageName:"_B_positive", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 23, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 13, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 13, column: 8, scope: !7)
!18 = !DILocation(line: 17, column: 8, scope: !7)
!19 = !DILocation(line: 0, column: 0, scope: !9)
