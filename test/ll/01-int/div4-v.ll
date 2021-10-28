@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i64
  %31 = alloca i64
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8
  %34 = load i8*, i8** @_bal_stack_guard
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %94, label %36
36:
  %37 = call i64 @_B_div(i64 60, i64 2), !dbg !10
  store i64 %37, i64* %1, !dbg !10
  %38 = load i64, i64* %1, !dbg !11
  %39 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %38), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %39), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %40 = call i64 @_B_div(i64 120, i64 3), !dbg !12
  store i64 %40, i64* %3, !dbg !12
  %41 = load i64, i64* %3, !dbg !13
  %42 = call i64 @_B_div(i64 %41, i64 4), !dbg !13
  store i64 %42, i64* %4, !dbg !13
  %43 = load i64, i64* %4, !dbg !14
  %44 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %43), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  %45 = call i64 @_B_div(i64 120, i64 3), !dbg !15
  store i64 %45, i64* %6, !dbg !15
  %46 = call i64 @_B_div(i64 16, i64 4), !dbg !16
  store i64 %46, i64* %7, !dbg !16
  %47 = load i64, i64* %6, !dbg !17
  %48 = load i64, i64* %7, !dbg !17
  %49 = call i64 @_B_div(i64 %47, i64 %48), !dbg !17
  store i64 %49, i64* %8, !dbg !17
  %50 = load i64, i64* %8, !dbg !18
  %51 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %50), !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !18
  %52 = call i64 @_B_div(i64 120, i64 3), !dbg !19
  store i64 %52, i64* %10, !dbg !19
  %53 = call i64 @_B_div(i64 16, i64 4), !dbg !20
  store i64 %53, i64* %11, !dbg !20
  %54 = load i64, i64* %10, !dbg !21
  %55 = load i64, i64* %11, !dbg !21
  %56 = call i64 @_B_div(i64 %54, i64 %55), !dbg !21
  store i64 %56, i64* %12, !dbg !21
  %57 = load i64, i64* %12, !dbg !22
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %57), !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !22
  %59 = call i64 @_B_div(i64 120, i64 3), !dbg !23
  store i64 %59, i64* %14, !dbg !23
  %60 = call i64 @_B_div(i64 16, i64 4), !dbg !24
  store i64 %60, i64* %15, !dbg !24
  %61 = load i64, i64* %14, !dbg !25
  %62 = load i64, i64* %15, !dbg !25
  %63 = call i64 @_B_div(i64 %61, i64 %62), !dbg !25
  store i64 %63, i64* %16, !dbg !25
  %64 = load i64, i64* %16, !dbg !26
  %65 = call i64 @_B_div(i64 %64, i64 2), !dbg !26
  store i64 %65, i64* %17, !dbg !26
  %66 = load i64, i64* %17, !dbg !27
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %68 = call i64 @_B_div(i64 120, i64 3), !dbg !28
  store i64 %68, i64* %19, !dbg !28
  %69 = call i64 @_B_div(i64 16, i64 4), !dbg !29
  store i64 %69, i64* %20, !dbg !29
  %70 = load i64, i64* %19, !dbg !30
  %71 = load i64, i64* %20, !dbg !30
  %72 = call i64 @_B_div(i64 %70, i64 %71), !dbg !30
  store i64 %72, i64* %21, !dbg !30
  %73 = call i64 @_B_div(i64 10, i64 5), !dbg !31
  store i64 %73, i64* %22, !dbg !31
  %74 = load i64, i64* %21, !dbg !32
  %75 = load i64, i64* %22, !dbg !32
  %76 = call i64 @_B_div(i64 %74, i64 %75), !dbg !32
  store i64 %76, i64* %23, !dbg !32
  %77 = load i64, i64* %23, !dbg !33
  %78 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %77), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %78), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  %79 = call i64 @_B_div(i64 120, i64 3), !dbg !34
  store i64 %79, i64* %25, !dbg !34
  %80 = call i64 @_B_div(i64 16, i64 4), !dbg !35
  store i64 %80, i64* %26, !dbg !35
  %81 = load i64, i64* %25, !dbg !36
  %82 = load i64, i64* %26, !dbg !36
  %83 = call i64 @_B_div(i64 %81, i64 %82), !dbg !36
  store i64 %83, i64* %27, !dbg !36
  %84 = call i64 @_B_div(i64 400, i64 20), !dbg !37
  store i64 %84, i64* %28, !dbg !37
  %85 = call i64 @_B_div(i64 100, i64 10), !dbg !38
  store i64 %85, i64* %29, !dbg !38
  %86 = load i64, i64* %28, !dbg !39
  %87 = load i64, i64* %29, !dbg !39
  %88 = call i64 @_B_div(i64 %86, i64 %87), !dbg !39
  store i64 %88, i64* %30, !dbg !39
  %89 = load i64, i64* %27, !dbg !40
  %90 = load i64, i64* %30, !dbg !40
  %91 = call i64 @_B_div(i64 %89, i64 %90), !dbg !40
  store i64 %91, i64* %31, !dbg !40
  %92 = load i64, i64* %31, !dbg !41
  %93 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %92), !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %93), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !41
  ret void
94:
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %95)
  unreachable
}
define internal i64 @_B_div(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %18
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 3588), !dbg !42
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 3842), !dbg !42
  store i8 addrspace(1)* %17, i8 addrspace(1)** %4
  br label %12
18:
  %19 = icmp eq i64 %9, -9223372036854775808
  %20 = icmp eq i64 %10, -1
  %21 = and i1 %19, %20
  br i1 %21, label %25, label %22
22:
  %23 = sdiv i64 %9, %10
  store i64 %23, i64* %3
  %24 = load i64, i64* %3
  ret i64 %24
25:
  %26 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !42
  store i8 addrspace(1)* %26, i8 addrspace(1)** %4
  br label %12
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/div4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"div", linkageName:"_B_div", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 19, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 19, scope: !5)
!16 = !DILocation(line: 7, column: 32, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 8, column: 19, scope: !5)
!20 = !DILocation(line: 8, column: 32, scope: !5)
!21 = !DILocation(line: 8, column: 15, scope: !5)
!22 = !DILocation(line: 8, column: 4, scope: !5)
!23 = !DILocation(line: 9, column: 23, scope: !5)
!24 = !DILocation(line: 9, column: 36, scope: !5)
!25 = !DILocation(line: 9, column: 19, scope: !5)
!26 = !DILocation(line: 9, column: 15, scope: !5)
!27 = !DILocation(line: 9, column: 4, scope: !5)
!28 = !DILocation(line: 10, column: 23, scope: !5)
!29 = !DILocation(line: 10, column: 36, scope: !5)
!30 = !DILocation(line: 10, column: 19, scope: !5)
!31 = !DILocation(line: 10, column: 49, scope: !5)
!32 = !DILocation(line: 10, column: 15, scope: !5)
!33 = !DILocation(line: 10, column: 4, scope: !5)
!34 = !DILocation(line: 11, column: 23, scope: !5)
!35 = !DILocation(line: 11, column: 36, scope: !5)
!36 = !DILocation(line: 11, column: 19, scope: !5)
!37 = !DILocation(line: 11, column: 53, scope: !5)
!38 = !DILocation(line: 11, column: 67, scope: !5)
!39 = !DILocation(line: 11, column: 49, scope: !5)
!40 = !DILocation(line: 11, column: 15, scope: !5)
!41 = !DILocation(line: 11, column: 4, scope: !5)
!42 = !DILocation(line: 0, column: 0, scope: !7)
