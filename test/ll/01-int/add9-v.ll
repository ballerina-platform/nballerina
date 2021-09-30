@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %23, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 12), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  %16 = call i64 @_B_add(i64 3, i64 5, i64 -5, i64 9), !dbg !13
  store i64 %16, i64* %4, !dbg !13
  %17 = load i64, i64* %4, !dbg !14
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %20 = call i64 @_B_add(i64 3, i64 -5, i64 9, i64 -4), !dbg !16
  store i64 %20, i64* %7, !dbg !16
  %21 = load i64, i64* %7, !dbg !17
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %21), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  ret void
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
}
define internal i64 @_B_add(i64 %0, i64 %1, i64 %2, i64 %3) !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %d = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %19, label %12
12:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  store i64 %2, i64* %c
  store i64 %3, i64* %d
  %13 = load i64, i64* %a
  %14 = load i64, i64* %b
  %15 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %13, i64 %14)
  %16 = extractvalue {i64, i1} %15, 1
  br i1 %16, label %27, label %21
17:
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = call i8 addrspace(1)* @_bal_panic_construct(i64 3332), !dbg !18
  call void @_bal_panic(i8 addrspace(1)* %20)
  unreachable
21:
  %22 = extractvalue {i64, i1} %15, 0
  store i64 %22, i64* %5
  %23 = load i64, i64* %5
  %24 = load i64, i64* %c
  %25 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %23, i64 %24)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %35, label %29
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !18
  store i8 addrspace(1)* %28, i8 addrspace(1)** %8
  br label %17
29:
  %30 = extractvalue {i64, i1} %25, 0
  store i64 %30, i64* %6
  %31 = load i64, i64* %6
  %32 = load i64, i64* %d
  %33 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %31, i64 %32)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %40, label %37
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !18
  store i8 addrspace(1)* %36, i8 addrspace(1)** %8
  br label %17
37:
  %38 = extractvalue {i64, i1} %33, 0
  store i64 %38, i64* %7
  %39 = load i64, i64* %7
  ret i64 %39
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !18
  store i8 addrspace(1)* %41, i8 addrspace(1)** %8
  br label %17
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/add9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"add", linkageName:"_B_add", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 9, column: 4, scope: !5)
!16 = !DILocation(line: 10, column: 15, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
!18 = !DILocation(line: 0, column: 0, scope: !7)
