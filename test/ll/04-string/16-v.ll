@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_Bb0m4lang6stringlength(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %str = alloca i8 addrspace(1)*
  %i = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %25, label %8
8:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)** %str
  store i64 0, i64* %i
  br label %9
9:
  %10 = load i64, i64* %i
  %11 = icmp slt i64 %10, 9
  store i1 %11, i1* %1
  %12 = load i1, i1* %1
  br i1 %12, label %18, label %13
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %str, !dbg !10
  %15 = call i64 @_Bb0m4lang6stringlength(i8 addrspace(1)* %14), !dbg !10
  store i64 %15, i64* %3, !dbg !10
  %16 = load i64, i64* %3, !dbg !11
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %16), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  ret void
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %str, !dbg !12
  %20 = call i8 addrspace(1)* @_B_double(i8 addrspace(1)* %19), !dbg !12
  store i8 addrspace(1)* %20, i8 addrspace(1)** %2, !dbg !12
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %21, i8 addrspace(1)** %str
  br label %22
22:
  %23 = load i64, i64* %i
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %i
  br label %9
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
}
define internal i8 addrspace(1)* @_B_double(i8 addrspace(1)* %0) !dbg !7 {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %11, label %6
6:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %9 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %7, i8 addrspace(1)* %8)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %2
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  ret i8 addrspace(1)* %10
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-string/16-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"double", linkageName:"_B_double", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 8, column: 19, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 14, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
