@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define internal i64 @_B_lower() !dbg !5 {
  %u = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %9, label %5
5:
  store i64 2, i64* %u
  %6 = load i64, i64* %u, !dbg !12
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %7), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  %8 = load i64, i64* %u
  ret i64 %8
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal i64 @_B_upper() !dbg !7 {
  %u = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %9, label %5
5:
  store i64 5, i64* %u
  %6 = load i64, i64* %u, !dbg !14
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %7), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !14
  %8 = load i64, i64* %u
  ret i64 %8
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define void @_B04rootmain() !dbg !9 {
  %1 = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %24, label %8
8:
  %9 = call i64 @_B_lower(), !dbg !16
  store i64 %9, i64* %1, !dbg !16
  %10 = call i64 @_B_upper(), !dbg !17
  store i64 %10, i64* %2, !dbg !17
  %11 = load i64, i64* %1
  store i64 %11, i64* %i
  br label %12
12:
  %13 = load i64, i64* %i
  %14 = load i64, i64* %2
  %15 = icmp slt i64 %13, %14
  store i1 %15, i1* %3
  %16 = load i1, i1* %3
  br i1 %16, label %18, label %17
17:
  ret void
18:
  %19 = load i64, i64* %i, !dbg !18
  %20 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %19), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !18
  br label %21
21:
  %22 = load i64, i64* %i
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %i
  br label %12
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 4100), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-loop/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"lower", linkageName:"_B_lower", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"upper", linkageName:"_B_upper", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 16, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 12, column: 4, scope: !7)
!15 = !DILocation(line: 0, column: 0, scope: !9)
!16 = !DILocation(line: 17, column: 21, scope: !9)
!17 = !DILocation(line: 17, column: 33, scope: !9)
!18 = !DILocation(line: 18, column: 8, scope: !9)
