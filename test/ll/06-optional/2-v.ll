@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !12
  %10 = call i8 addrspace(1)* @_B_double(i8 addrspace(1)* %9), !dbg !12
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1, !dbg !12
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !13
  call void @_B_print(i8 addrspace(1)* %11), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !13
  %12 = call i8 addrspace(1)* @_B_double(i8 addrspace(1)* null), !dbg !14
  store i8 addrspace(1)* %12, i8 addrspace(1)** %3, !dbg !14
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %3, !dbg !15
  call void @_B_print(i8 addrspace(1)* %13), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !15
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
define internal void @_B_print(i8 addrspace(1)* %0) !dbg !7 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %20, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = icmp eq i8 addrspace(1)* %9, null
  store i1 %10, i1* %2
  %11 = load i1, i1* %2
  br i1 %11, label %12, label %14
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %13, i8 addrspace(1)** %x.1
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541154981230)), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !17
  br label %19
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %16 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  store i64 %16, i64* %x.2
  %17 = load i64, i64* %x.2, !dbg !18
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %17), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %18), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !18
  br label %19
19:
  ret void
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !16
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
define internal i8 addrspace(1)* @_B_double(i8 addrspace(1)* %0) !dbg !9 {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %23, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %10 = icmp eq i8 addrspace(1)* %9, null
  store i1 %10, i1* %2
  %11 = load i1, i1* %2
  br i1 %11, label %12, label %14
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %13, i8 addrspace(1)** %x.1
  ret i8 addrspace(1)* null
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %16 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %15)
  store i64 %16, i64* %x.2
  %17 = load i64, i64* %x.2
  %18 = load i64, i64* %x.2
  %19 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %17, i64 %18)
  %20 = extractvalue {i64, i1} %19, 1
  br i1 %20, label %29, label %25
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
23:
  %24 = call i8 addrspace(1)* @_bal_panic_construct(i64 4612), !dbg !19
  call void @_bal_panic(i8 addrspace(1)* %24)
  unreachable
25:
  %26 = extractvalue {i64, i1} %19, 0
  store i64 %26, i64* %3
  %27 = load i64, i64* %3
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27)
  ret i8 addrspace(1)* %28
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 5889), !dbg !19
  store i8 addrspace(1)* %30, i8 addrspace(1)** %4
  br label %21
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-optional/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"print", linkageName:"_B_print", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"double", linkageName:"_B_double", scope: !1, file: !1, line: 18, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 5, column: 10, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 10, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 11, column: 8, scope: !7)
!18 = !DILocation(line: 14, column: 8, scope: !7)
!19 = !DILocation(line: 0, column: 0, scope: !9)
