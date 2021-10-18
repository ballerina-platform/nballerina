@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  %7 = call i64 @_B_foo(i64 10), !dbg !10
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
define internal i64 @_B_foo(i64 %0) !dbg !7 {
  %x = alloca i64
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i1
  %i.1 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %22, label %9
9:
  store i64 %0, i64* %x
  %10 = load i64, i64* %x
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %10, i64 1)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %30, label %24
13:
  %14 = load i64, i64* %i
  store i64 %14, i64* %i.1
  %15 = load i64, i64* %i.1, !dbg !13
  %16 = call i64 @_B_foo(i64 %15), !dbg !13
  store i64 %16, i64* %4, !dbg !13
  %17 = load i64, i64* %4
  ret i64 %17
18:
  %19 = load i64, i64* %i
  ret i64 %19
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = call i8 addrspace(1)* @_bal_panic_construct(i64 2052), !dbg !12
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = extractvalue {i64, i1} %11, 0
  store i64 %25, i64* %2
  %26 = load i64, i64* %2
  store i64 %26, i64* %i
  %27 = load i64, i64* %i
  %28 = icmp ne i64 %27, 0
  store i1 %28, i1* %3
  %29 = load i1, i1* %3
  br i1 %29, label %13, label %18
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !12
  store i8 addrspace(1)* %31, i8 addrspace(1)** %5
  br label %20
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call16-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 0, column: 0, scope: !7)
!13 = !DILocation(line: 11, column: 15, scope: !7)
