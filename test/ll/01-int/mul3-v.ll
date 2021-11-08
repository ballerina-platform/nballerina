@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8
  %32 = load i8*, i8** @_bal_stack_guard
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %80, label %34
34:
  %35 = call i64 @_B_mul(i64 9223372036854775806, i64 1), !dbg !10
  store i64 %35, i64* %1, !dbg !10
  %36 = load i64, i64* %1, !dbg !11
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %36), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %38 = call i64 @_B_mul(i64 9223372036854775806, i64 0), !dbg !12
  store i64 %38, i64* %3, !dbg !12
  %39 = load i64, i64* %3, !dbg !13
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %40), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %41 = call i64 @_B_mul(i64 9223372036854775806, i64 -1), !dbg !14
  store i64 %41, i64* %5, !dbg !14
  %42 = load i64, i64* %5, !dbg !15
  %43 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %42), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %43), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %44 = call i64 @_B_mul(i64 1, i64 1), !dbg !16
  store i64 %44, i64* %7, !dbg !16
  %45 = load i64, i64* %7, !dbg !17
  %46 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %45), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %47 = call i64 @_B_mul(i64 1, i64 0), !dbg !18
  store i64 %47, i64* %9, !dbg !18
  %48 = load i64, i64* %9, !dbg !19
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %48), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %50 = call i64 @_B_mul(i64 1, i64 -1), !dbg !20
  store i64 %50, i64* %11, !dbg !20
  %51 = load i64, i64* %11, !dbg !21
  %52 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %51), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %52), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %53 = call i64 @_B_mul(i64 0, i64 1), !dbg !22
  store i64 %53, i64* %13, !dbg !22
  %54 = load i64, i64* %13, !dbg !23
  %55 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %54), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %55), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %56 = call i64 @_B_mul(i64 0, i64 0), !dbg !24
  store i64 %56, i64* %15, !dbg !24
  %57 = load i64, i64* %15, !dbg !25
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %57), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %59 = call i64 @_B_mul(i64 0, i64 -1), !dbg !26
  store i64 %59, i64* %17, !dbg !26
  %60 = load i64, i64* %17, !dbg !27
  %61 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %60), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %62 = call i64 @_B_mul(i64 -1, i64 1), !dbg !28
  store i64 %62, i64* %19, !dbg !28
  %63 = load i64, i64* %19, !dbg !29
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %63), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %64), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  %65 = call i64 @_B_mul(i64 -1, i64 0), !dbg !30
  store i64 %65, i64* %21, !dbg !30
  %66 = load i64, i64* %21, !dbg !31
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !31
  %68 = call i64 @_B_mul(i64 -1, i64 -1), !dbg !32
  store i64 %68, i64* %23, !dbg !32
  %69 = load i64, i64* %23, !dbg !33
  %70 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %69), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %70), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  %71 = call i64 @_B_mul(i64 -9223372036854775806, i64 1), !dbg !34
  store i64 %71, i64* %25, !dbg !34
  %72 = load i64, i64* %25, !dbg !35
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %72), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !35
  %74 = call i64 @_B_mul(i64 -9223372036854775806, i64 0), !dbg !36
  store i64 %74, i64* %27, !dbg !36
  %75 = load i64, i64* %27, !dbg !37
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %75), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %76), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !37
  %77 = call i64 @_B_mul(i64 -9223372036854775806, i64 -1), !dbg !38
  store i64 %77, i64* %29, !dbg !38
  %78 = load i64, i64* %29, !dbg !39
  %79 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %78), !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !39
  ret void
80:
  %81 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %81)
  unreachable
}
define internal i64 @_B_mul(i64 %0, i64 %1) !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %9 = load i64, i64* %a
  %10 = load i64, i64* %b
  %11 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 6660), !dbg !40
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 6913), !dbg !40
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/mul3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mul", linkageName:"_B_mul", scope: !1, file: !1, line: 26, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 15, scope: !5)
!21 = !DILocation(line: 11, column: 4, scope: !5)
!22 = !DILocation(line: 13, column: 15, scope: !5)
!23 = !DILocation(line: 13, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 15, scope: !5)
!25 = !DILocation(line: 14, column: 4, scope: !5)
!26 = !DILocation(line: 15, column: 15, scope: !5)
!27 = !DILocation(line: 15, column: 4, scope: !5)
!28 = !DILocation(line: 17, column: 15, scope: !5)
!29 = !DILocation(line: 17, column: 4, scope: !5)
!30 = !DILocation(line: 18, column: 15, scope: !5)
!31 = !DILocation(line: 18, column: 4, scope: !5)
!32 = !DILocation(line: 19, column: 15, scope: !5)
!33 = !DILocation(line: 19, column: 4, scope: !5)
!34 = !DILocation(line: 21, column: 15, scope: !5)
!35 = !DILocation(line: 21, column: 4, scope: !5)
!36 = !DILocation(line: 22, column: 15, scope: !5)
!37 = !DILocation(line: 22, column: 4, scope: !5)
!38 = !DILocation(line: 23, column: 15, scope: !5)
!39 = !DILocation(line: 23, column: 4, scope: !5)
!40 = !DILocation(line: 0, column: 0, scope: !7)
