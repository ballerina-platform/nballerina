@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %20, label %13
13:
  %14 = call i8 addrspace(1)* @_B_f(i1 1), !dbg !10
  store i8 addrspace(1)* %14, i8 addrspace(1)** %1, !dbg !10
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %16 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %15)
  %17 = extractvalue {i8 addrspace(1)*, i1} %16, 1
  br i1 %17, label %29, label %22
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = extractvalue {i8 addrspace(1)*, i1} %16, 0
  store i8 addrspace(1)* %23, i8 addrspace(1)** %2
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 504403158265495552
  br i1 %28, label %31, label %40
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !9
  store i8 addrspace(1)* %30, i8 addrspace(1)** %9
  br label %18
31:
  %32 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %24)
  store i64 %32, i64* %3
  %33 = load i64, i64* %3
  store i64 %33, i64* %i
  %34 = load i64, i64* %i, !dbg !11
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %36 = call i8 addrspace(1)* @_B_f(i1 0), !dbg !12
  store i8 addrspace(1)* %36, i8 addrspace(1)** %5, !dbg !12
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %38 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %37)
  %39 = extractvalue {i8 addrspace(1)*, i1} %38, 1
  br i1 %39, label %49, label %42
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283), !dbg !9
  store i8 addrspace(1)* %41, i8 addrspace(1)** %9
  br label %18
42:
  %43 = extractvalue {i8 addrspace(1)*, i1} %38, 0
  store i8 addrspace(1)* %43, i8 addrspace(1)** %6
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %45 = addrspacecast i8 addrspace(1)* %44 to i8*
  %46 = ptrtoint i8* %45 to i64
  %47 = and i64 %46, 2233785415175766016
  %48 = icmp eq i64 %47, 504403158265495552
  br i1 %48, label %51, label %56
49:
  %50 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049), !dbg !9
  store i8 addrspace(1)* %50, i8 addrspace(1)** %9
  br label %18
51:
  %52 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %44)
  store i64 %52, i64* %7
  %53 = load i64, i64* %7
  store i64 %53, i64* %i
  %54 = load i64, i64* %i, !dbg !13
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %54), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !13
  ret void
56:
  %57 = call i8 addrspace(1)* @_bal_panic_construct(i64 2051), !dbg !9
  store i8 addrspace(1)* %57, i8 addrspace(1)** %9
  br label %18
}
define internal i8 addrspace(1)* @_B_f(i1 %0) !dbg !7 {
  %isInt = alloca i1
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %11, label %5
5:
  store i1 %0, i1* %isInt
  %6 = load i1, i1* %isInt
  br i1 %6, label %7, label %9
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  ret i8 addrspace(1)* %8
9:
  %10 = call i8 addrspace(1)* @_bal_float_to_tagged(double 3.5)
  ret i8 addrspace(1)* %10
11:
  %12 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %12)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/13-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B_f", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 17, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 13, scope: !5)
!13 = !DILocation(line: 9, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
