@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i64 @_B_bin(i64 6, i64 2, i64 3), !dbg !10
  store i64 %7, i64* %1, !dbg !10
  %8 = load i64, i64* %1, !dbg !11
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %9), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  ret void
10:
  %11 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %11)
  unreachable
}
define internal i64 @_B_bin(i64 %0, i64 %1, i64 %2) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %z = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %17, label %10
10:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  store i64 %2, i64* %z
  %11 = load i64, i64* %x
  %12 = load i64, i64* %y
  %13 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %11, i64 %12)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %24, label %19
15:
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
19:
  %20 = extractvalue {i64, i1} %13, 0
  store i64 %20, i64* %4
  %21 = load i64, i64* %4
  %22 = load i64, i64* %z
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %28
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !12
  store i8 addrspace(1)* %25, i8 addrspace(1)** %6
  br label %15
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 2306), !dbg !12
  store i8 addrspace(1)* %27, i8 addrspace(1)** %6
  br label %15
28:
  %29 = icmp eq i64 %21, -9223372036854775808
  %30 = icmp eq i64 %22, -1
  %31 = and i1 %29, %30
  br i1 %31, label %35, label %32
32:
  %33 = sdiv i64 %21, %22
  store i64 %33, i64* %5
  %34 = load i64, i64* %5
  ret i64 %34
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !12
  store i8 addrspace(1)* %36, i8 addrspace(1)** %6
  br label %15
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/bin-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"bin", linkageName:"_B_bin", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 13, scope: !5)
!11 = !DILocation(line: 5, column: 2, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
