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
  %x = alloca i64
  %5 = alloca i1
  %x.1 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %x.3 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %x.4 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %47, label %14
14:
  store i1 1, i1* %b
  %15 = load i1, i1* %b
  br i1 %15, label %16, label %18
16:
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  br label %20
18:
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !9
  br label %20
20:
  store i1 0, i1* %b
  %21 = load i1, i1* %b
  br i1 %21, label %22, label %24
22:
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  br label %26
24:
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  br label %26
26:
  store i64 42, i64* %x
  %27 = load i64, i64* %x
  %28 = icmp eq i64 %27, 42
  store i1 %28, i1* %5
  %29 = load i1, i1* %5
  br i1 %29, label %30, label %33
30:
  %31 = load i64, i64* %x
  store i64 %31, i64* %x.1
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !12
  br label %36
33:
  %34 = load i64, i64* %x
  store i64 %34, i64* %x.2
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !13
  br label %36
36:
  %37 = load i64, i64* %x
  %38 = icmp ne i64 42, %37
  store i1 %38, i1* %8
  %39 = load i1, i1* %8
  br i1 %39, label %40, label %43
40:
  %41 = load i64, i64* %x
  store i64 %41, i64* %x.3
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %42), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !14
  br label %46
43:
  %44 = load i64, i64* %x
  store i64 %44, i64* %x.4
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !15
  br label %46
46:
  ret void
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %48)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/equal3-v.bal", directory:"")
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
!14 = !DILocation(line: 27, column: 8, scope: !5)
!15 = !DILocation(line: 30, column: 8, scope: !5)
