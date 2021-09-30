@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  %9 = call i64 @_B_foo(i64 13, i1 0), !dbg !10
  store i64 %9, i64* %1, !dbg !10
  %10 = load i64, i64* %1, !dbg !11
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %10), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %11), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %12 = call i64 @_B_foo(i64 14, i1 1), !dbg !12
  store i64 %12, i64* %3, !dbg !12
  %13 = load i64, i64* %3, !dbg !13
  %14 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %13), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %14), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
}
define internal i64 @_B_foo(i64 %0, i1 %1) !dbg !7 {
  %i = alloca i64
  %b = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %20, label %9
9:
  store i64 %0, i64* %i
  store i1 %1, i1* %b
  %10 = load i1, i1* %b
  br i1 %10, label %11, label %15
11:
  %12 = load i64, i64* %i
  %13 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %12, i64 1)
  %14 = extractvalue {i64, i1} %13, 1
  br i1 %14, label %25, label %22
15:
  %16 = load i64, i64* %i
  %17 = icmp eq i64 5, 0
  br i1 %17, label %27, label %29
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = extractvalue {i64, i1} %13, 0
  store i64 %23, i64* %3
  %24 = load i64, i64* %3
  ret i64 %24
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !14
  store i8 addrspace(1)* %26, i8 addrspace(1)** %5
  br label %18
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 3330), !dbg !14
  store i8 addrspace(1)* %28, i8 addrspace(1)** %5
  br label %18
29:
  %30 = icmp eq i64 %16, -9223372036854775808
  %31 = icmp eq i64 5, -1
  %32 = and i1 %30, %31
  br i1 %32, label %35, label %33
33:
  %34 = srem i64 %16, 5
  store i64 %34, i64* %4
  br label %36
35:
  store i64 0, i64* %4
  br label %36
36:
  %37 = load i64, i64* %4
  ret i64 %37
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/call10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
