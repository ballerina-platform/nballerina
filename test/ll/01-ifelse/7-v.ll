@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %9, label %8
8:
  call void @_B_foo(i64 1, i64 1), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  call void @_B_foo(i64 2, i64 1), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B_foo(i64 5, i64 4), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  call void @_B_foo(i64 12, i64 10), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
define internal void @_B_foo(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %39, label %14
14:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %15 = load i64, i64* %x
  %16 = load i64, i64* %y
  %17 = icmp sgt i64 %15, %16
  store i1 %17, i1* %3
  %18 = load i1, i1* %3
  br i1 %18, label %19, label %23
19:
  %20 = load i64, i64* %x
  %21 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %20, i64 1)
  %22 = extractvalue {i64, i1} %21, 1
  br i1 %22, label %45, label %41
23:
  %24 = load i64, i64* %x
  %25 = load i64, i64* %y
  %26 = icmp slt i64 %24, %25
  store i1 %26, i1* %6
  %27 = load i1, i1* %6
  br i1 %27, label %28, label %32
28:
  %29 = load i64, i64* %y
  %30 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %29, i64 1)
  %31 = extractvalue {i64, i1} %30, 1
  br i1 %31, label %51, label %47
32:
  %33 = load i64, i64* %x, !dbg !17
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %33), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %34), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !17
  br label %35
35:
  br label %36
36:
  ret void
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 2820), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
41:
  %42 = extractvalue {i64, i1} %21, 0
  store i64 %42, i64* %4
  %43 = load i64, i64* %4, !dbg !15
  %44 = load i64, i64* %y, !dbg !15
  call void @_B_foo(i64 %43, i64 %44), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !15
  br label %36
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 3329), !dbg !14
  store i8 addrspace(1)* %46, i8 addrspace(1)** %10
  br label %37
47:
  %48 = extractvalue {i64, i1} %30, 0
  store i64 %48, i64* %7
  %49 = load i64, i64* %x, !dbg !16
  %50 = load i64, i64* %7, !dbg !16
  call void @_B_foo(i64 %49, i64 %50), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !16
  br label %35
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !14
  store i8 addrspace(1)* %52, i8 addrspace(1)** %10
  br label %37
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-ifelse/7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 13, column: 8, scope: !7)
!16 = !DILocation(line: 15, column: 8, scope: !7)
!17 = !DILocation(line: 17, column: 8, scope: !7)
