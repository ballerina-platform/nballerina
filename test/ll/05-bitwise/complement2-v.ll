@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %50, label %22
22:
  store i64 0, i64* %i
  %23 = load i64, i64* %i
  %24 = xor i64 -1, %23
  store i64 %24, i64* %1
  %25 = load i64, i64* %1, !dbg !14
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %25), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %26), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !14
  %27 = call i64 @_B04roottwiddle(i64 1), !dbg !15
  store i64 %27, i64* %3, !dbg !15
  %28 = load i64, i64* %3, !dbg !16
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !16
  %30 = call i64 @_B04roottwiddle(i64 100), !dbg !17
  store i64 %30, i64* %5, !dbg !17
  %31 = load i64, i64* %5
  %32 = xor i64 -1, %31
  store i64 %32, i64* %6
  %33 = load i64, i64* %6, !dbg !18
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %33), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !18
  %35 = call i8 addrspace(1)* @_Bb0m4lang3inttoHexString(i64 -9223372036854775808), !dbg !19
  store i8 addrspace(1)* %35, i8 addrspace(1)** %8, !dbg !19
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %8, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !20
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !21
  %38 = call i64 @_B04rootminusTwo(i64 42), !dbg !22
  store i64 %38, i64* %11, !dbg !22
  %39 = load i64, i64* %11, !dbg !23
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !23
  %41 = call i64 @_B04rootminusTwo(i64 -98), !dbg !24
  store i64 %41, i64* %13, !dbg !24
  %42 = load i64, i64* %13, !dbg !25
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %42), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !25
  %44 = call i64 @_B04rootaddTwo(i64 42), !dbg !26
  store i64 %44, i64* %15, !dbg !26
  %45 = load i64, i64* %15, !dbg !27
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %45), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !27
  %47 = call i64 @_B04rootaddTwo(i64 -98), !dbg !28
  store i64 %47, i64* %17, !dbg !28
  %48 = load i64, i64* %17, !dbg !29
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %48), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !29
  ret void
50:
  %51 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %51)
  unreachable
}
define i64 @_B04roottwiddle(i64 %0) !dbg !7 {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i64 %0, i64* %i
  %7 = load i64, i64* %i
  %8 = xor i64 -1, %7
  store i64 %8, i64* %2
  %9 = load i64, i64* %2
  ret i64 %9
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 4868), !dbg !30
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define i64 @_B04rootminusTwo(i64 %0) !dbg !9 {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %16, label %10
10:
  store i64 %0, i64* %i
  %11 = load i64, i64* %i
  %12 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %11)
  %13 = extractvalue {i64, i1} %12, 1
  br i1 %13, label %25, label %18
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 5892), !dbg !31
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = extractvalue {i64, i1} %12, 0
  store i64 %19, i64* %2
  %20 = load i64, i64* %2
  %21 = xor i64 -1, %20
  store i64 %21, i64* %3
  %22 = load i64, i64* %3
  %23 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %22)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %32, label %27
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 6145), !dbg !31
  store i8 addrspace(1)* %26, i8 addrspace(1)** %6
  br label %14
27:
  %28 = extractvalue {i64, i1} %23, 0
  store i64 %28, i64* %4
  %29 = load i64, i64* %4
  %30 = xor i64 -1, %29
  store i64 %30, i64* %5
  %31 = load i64, i64* %5
  ret i64 %31
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 6145), !dbg !31
  store i8 addrspace(1)* %33, i8 addrspace(1)** %6
  br label %14
}
define i64 @_B04rootaddTwo(i64 %0) !dbg !11 {
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %18, label %10
10:
  store i64 %0, i64* %i
  %11 = load i64, i64* %i
  %12 = xor i64 -1, %11
  store i64 %12, i64* %2
  %13 = load i64, i64* %2
  %14 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %13)
  %15 = extractvalue {i64, i1} %14, 1
  br i1 %15, label %27, label %20
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660), !dbg !32
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = extractvalue {i64, i1} %14, 0
  store i64 %21, i64* %3
  %22 = load i64, i64* %3
  %23 = xor i64 -1, %22
  store i64 %23, i64* %4
  %24 = load i64, i64* %4
  %25 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %24)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %32, label %29
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913), !dbg !32
  store i8 addrspace(1)* %28, i8 addrspace(1)** %6
  br label %16
29:
  %30 = extractvalue {i64, i1} %25, 0
  store i64 %30, i64* %5
  %31 = load i64, i64* %5
  ret i64 %31
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913), !dbg !32
  store i8 addrspace(1)* %33, i8 addrspace(1)** %6
  br label %16
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-bitwise/complement2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"twiddle", linkageName:"_B04roottwiddle", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"minusTwo", linkageName:"_B04rootminusTwo", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"addTwo", linkageName:"_B04rootaddTwo", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 15, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 16, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 8, column: 36, scope: !5)
!20 = !DILocation(line: 8, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 4, scope: !5)
!22 = !DILocation(line: 11, column: 15, scope: !5)
!23 = !DILocation(line: 11, column: 4, scope: !5)
!24 = !DILocation(line: 12, column: 15, scope: !5)
!25 = !DILocation(line: 12, column: 4, scope: !5)
!26 = !DILocation(line: 14, column: 15, scope: !5)
!27 = !DILocation(line: 14, column: 4, scope: !5)
!28 = !DILocation(line: 15, column: 15, scope: !5)
!29 = !DILocation(line: 15, column: 4, scope: !5)
!30 = !DILocation(line: 0, column: 0, scope: !7)
!31 = !DILocation(line: 0, column: 0, scope: !9)
!32 = !DILocation(line: 0, column: 0, scope: !11)
