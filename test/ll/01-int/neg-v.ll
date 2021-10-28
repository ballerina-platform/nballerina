@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %neg1 = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %26, label %12
12:
  %13 = call i64 @_B_neg(i64 17), !dbg !12
  store i64 %13, i64* %1, !dbg !12
  %14 = load i64, i64* %1
  store i64 %14, i64* %neg1
  %15 = load i64, i64* %neg1, !dbg !13
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  %17 = call i64 @_B_neg(i64 0), !dbg !14
  store i64 %17, i64* %3, !dbg !14
  %18 = load i64, i64* %3, !dbg !15
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %18), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !15
  %20 = call i64 @_B_neg(i64 -1), !dbg !16
  store i64 %20, i64* %5, !dbg !16
  %21 = load i64, i64* %5, !dbg !17
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !17
  %23 = call i64 @_B_negneg(i64 1), !dbg !18
  store i64 %23, i64* %7, !dbg !18
  %24 = load i64, i64* %7, !dbg !19
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %24), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !19
  ret void
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %27)
  unreachable
}
define internal i64 @_B_neg(i64 %0) !dbg !7 {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, i64* %x
  %8 = load i64, i64* %x
  %9 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %8)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !20
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, i64* %2
  %17 = load i64, i64* %2
  ret i64 %17
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073), !dbg !20
  store i8 addrspace(1)* %19, i8 addrspace(1)** %3
  br label %11
}
define internal i64 @_B_negneg(i64 %0) !dbg !9 {
  %x = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %x
  %9 = load i64, i64* %x
  %10 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %9)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %21, label %16
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !21
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = extractvalue {i64, i1} %10, 0
  store i64 %17, i64* %2
  %18 = load i64, i64* %2
  %19 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %18)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %26, label %23
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !21
  store i8 addrspace(1)* %22, i8 addrspace(1)** %4
  br label %12
23:
  %24 = extractvalue {i64, i1} %19, 0
  store i64 %24, i64* %3
  %25 = load i64, i64* %3
  ret i64 %25
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !21
  store i8 addrspace(1)* %27, i8 addrspace(1)** %4
  br label %12
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/neg-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"neg", linkageName:"_B_neg", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"negneg", linkageName:"_B_negneg", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 4, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
!21 = !DILocation(line: 0, column: 0, scope: !9)
