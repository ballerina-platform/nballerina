@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %b.1 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %b.2 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %b.3 = alloca i1
  %10 = alloca i1
  %b.4 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %b.5 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %56, label %16
16:
  store i1 1, i1* %b
  %17 = load i1, i1* %b
  br i1 %17, label %18, label %20
18:
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  br label %22
20:
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  br label %22
22:
  store i1 1, i1* %b
  %23 = load i1, i1* %b
  br i1 %23, label %24, label %26
24:
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  br label %28
26:
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 7), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  br label %28
28:
  store i1 0, i1* %b
  %29 = load i1, i1* %b
  br i1 %29, label %30, label %32
30:
  %31 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %31), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !12
  br label %34
32:
  %33 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !13
  br label %34
34:
  store i1 1, i1* %b
  %35 = load i1, i1* %b
  %36 = icmp eq i1 %35, 1
  store i1 %36, i1* %7
  %37 = load i1, i1* %7
  br i1 %37, label %38, label %41
38:
  %39 = load i1, i1* %b
  store i1 %39, i1* %b.1
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !14
  br label %44
41:
  %42 = load i1, i1* %b
  store i1 %42, i1* %b.2
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 11), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !15
  br label %44
44:
  %45 = load i1, i1* %b
  store i1 %45, i1* %b.3
  store i1 0, i1* %b
  %46 = load i1, i1* %b
  %47 = icmp eq i1 1, %46
  store i1 %47, i1* %10
  %48 = load i1, i1* %10
  br i1 %48, label %49, label %52
49:
  %50 = load i1, i1* %b
  store i1 %50, i1* %b.4
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 12), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !16
  br label %55
52:
  %53 = load i1, i1* %b
  store i1 %53, i1* %b.5
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 13), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !17
  br label %55
55:
  ret void
56:
  %57 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %57)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-boolean/equal2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 8, scope: !5)
!9 = !DILocation(line: 10, column: 8, scope: !5)
!10 = !DILocation(line: 14, column: 8, scope: !5)
!11 = !DILocation(line: 17, column: 8, scope: !5)
!12 = !DILocation(line: 21, column: 8, scope: !5)
!13 = !DILocation(line: 24, column: 8, scope: !5)
!14 = !DILocation(line: 28, column: 8, scope: !5)
!15 = !DILocation(line: 31, column: 8, scope: !5)
!16 = !DILocation(line: 35, column: 8, scope: !5)
!17 = !DILocation(line: 38, column: 8, scope: !5)
