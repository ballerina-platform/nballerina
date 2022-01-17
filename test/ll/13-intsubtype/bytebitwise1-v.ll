@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %7, label %6
6:
  call void @_B_and(), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !12
  call void @_B_or(), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal void @_B_and() !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %n = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  store i64 255, i64* %x
  store i64 4612, i64* %y
  %7 = load i64, i64* %x
  %8 = load i64, i64* %y
  %9 = and i64 %7, %8
  store i64 %9, i64* %1
  %10 = load i64, i64* %1
  store i64 %10, i64* %n
  %11 = load i64, i64* %n, !dbg !15
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !15
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
define internal void @_B_or() !dbg !9 {
  %x = alloca i64
  %y = alloca i64
  %b = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  store i64 240, i64* %x
  store i64 15, i64* %y
  %7 = load i64, i64* %x
  %8 = load i64, i64* %y
  %9 = or i64 %7, %8
  store i64 %9, i64* %1
  %10 = load i64, i64* %1
  store i64 %10, i64* %b
  %11 = load i64, i64* %b, !dbg !17
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !17
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-intsubtype/bytebitwise1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"and", linkageName:"_B_and", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"or", linkageName:"_B_or", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 4, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 12, column: 4, scope: !7)
!16 = !DILocation(line: 0, column: 0, scope: !9)
!17 = !DILocation(line: 19, column: 4, scope: !9)
