@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [20 x i8]} {i16 15, i16 5, [20 x i8] c"\E0\B9\80\E0\B8\88\E0\B8\A1\E0\B8\AA\E0\B9\8C\00\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_Bb0m4lang6stringlength(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %name = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %name2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %name3 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %51, label %16
16:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %name
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %name, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %17), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !8
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %name, !dbg !9
  %19 = call i64 @_Bb0m4lang6stringlength(i8 addrspace(1)* %18), !dbg !9
  store i64 %19, i64* %2, !dbg !9
  %20 = load i64, i64* %2, !dbg !10
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %20), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %21), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !10
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [20 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %name2
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %name2, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %name2
  %25 = call i1 @_bal_string_eq(i8 addrspace(1)* %23, i8 addrspace(1)* %24)
  store i1 %25, i1* %5
  %26 = load i1, i1* %5, !dbg !12
  %27 = zext i1 %26 to i64, !dbg !12
  %28 = or i64 %27, 72057594037927936, !dbg !12
  %29 = getelementptr i8, i8 addrspace(1)* null, i64 %28, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %29), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !12
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %name2
  %32 = call i1 @_bal_string_eq(i8 addrspace(1)* %30, i8 addrspace(1)* %31)
  %33 = xor i1 %32, 1
  store i1 %33, i1* %7
  %34 = load i1, i1* %7, !dbg !13
  %35 = zext i1 %34 to i64, !dbg !13
  %36 = or i64 %35, 72057594037927936, !dbg !13
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !13
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475939742179658), i8 addrspace(1)** %name3
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %name3
  store i8 addrspace(1)* %38, i8 addrspace(1)** %_
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %40 = icmp eq i8 addrspace(1)* %39, getelementptr(i8, i8 addrspace(1)* null, i64 3098475939742179658)
  store i1 %40, i1* %9
  %41 = load i1, i1* %9, !dbg !14
  %42 = zext i1 %41 to i64, !dbg !14
  %43 = or i64 %42, 72057594037927936, !dbg !14
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !14
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %name
  %46 = icmp ne i8 addrspace(1)* %45, getelementptr(i8, i8 addrspace(1)* null, i64 3098475939742179658)
  store i1 %46, i1* %11
  %47 = load i1, i1* %11, !dbg !15
  %48 = zext i1 %47 to i64, !dbg !15
  %49 = or i64 %48, 72057594037927936, !dbg !15
  %50 = getelementptr i8, i8 addrspace(1)* null, i64 %49, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %50), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !15
  ret void
51:
  %52 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %52)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-string/12-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 26, scope: !5)
!10 = !DILocation(line: 7, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 4, scope: !5)
!12 = !DILocation(line: 10, column: 4, scope: !5)
!13 = !DILocation(line: 11, column: 4, scope: !5)
!14 = !DILocation(line: 14, column: 4, scope: !5)
!15 = !DILocation(line: 15, column: 4, scope: !5)
