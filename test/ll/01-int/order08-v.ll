@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca i1
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca i1
  %22 = alloca ptr addrspace(1)
  %23 = alloca i1
  %24 = alloca ptr addrspace(1)
  %25 = alloca i1
  %26 = alloca ptr addrspace(1)
  %27 = alloca i1
  %28 = alloca ptr addrspace(1)
  %29 = alloca i1
  %30 = alloca ptr addrspace(1)
  %31 = alloca i1
  %32 = alloca ptr addrspace(1)
  %33 = alloca i1
  %34 = alloca ptr addrspace(1)
  %35 = alloca i1
  %36 = alloca ptr addrspace(1)
  %37 = alloca i1
  %38 = alloca ptr addrspace(1)
  %39 = alloca i1
  %40 = alloca ptr addrspace(1)
  %41 = alloca i1
  %42 = alloca ptr addrspace(1)
  %43 = alloca i1
  %44 = alloca ptr addrspace(1)
  %45 = alloca i1
  %46 = alloca ptr addrspace(1)
  %47 = alloca i1
  %48 = alloca ptr addrspace(1)
  %49 = alloca i1
  %50 = alloca ptr addrspace(1)
  %51 = alloca i8
  %52 = load ptr, ptr @_bal_stack_guard
  %53 = icmp ult ptr %51, %52
  br i1 %53, label %105, label %54
54:
  %55 = call i1 @_B_lt(i64 9223372036854775806, i64 9223372036854775806), !dbg !13
  store i1 %55, ptr %1
  %56 = load i1, ptr %1
  call void @_B_printBoolean(i1 %56), !dbg !14
  store ptr addrspace(1) null, ptr %2
  %57 = call i1 @_B_lt(i64 9223372036854775806, i64 1), !dbg !15
  store i1 %57, ptr %3
  %58 = load i1, ptr %3
  call void @_B_printBoolean(i1 %58), !dbg !16
  store ptr addrspace(1) null, ptr %4
  %59 = call i1 @_B_lt(i64 9223372036854775806, i64 0), !dbg !17
  store i1 %59, ptr %5
  %60 = load i1, ptr %5
  call void @_B_printBoolean(i1 %60), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %61 = call i1 @_B_lt(i64 9223372036854775806, i64 -1), !dbg !19
  store i1 %61, ptr %7
  %62 = load i1, ptr %7
  call void @_B_printBoolean(i1 %62), !dbg !20
  store ptr addrspace(1) null, ptr %8
  %63 = call i1 @_B_lt(i64 9223372036854775806, i64 -9223372036854775806), !dbg !21
  store i1 %63, ptr %9
  %64 = load i1, ptr %9
  call void @_B_printBoolean(i1 %64), !dbg !22
  store ptr addrspace(1) null, ptr %10
  %65 = call i1 @_B_lt(i64 1, i64 9223372036854775806), !dbg !23
  store i1 %65, ptr %11
  %66 = load i1, ptr %11
  call void @_B_printBoolean(i1 %66), !dbg !24
  store ptr addrspace(1) null, ptr %12
  %67 = call i1 @_B_lt(i64 1, i64 1), !dbg !25
  store i1 %67, ptr %13
  %68 = load i1, ptr %13
  call void @_B_printBoolean(i1 %68), !dbg !26
  store ptr addrspace(1) null, ptr %14
  %69 = call i1 @_B_lt(i64 1, i64 0), !dbg !27
  store i1 %69, ptr %15
  %70 = load i1, ptr %15
  call void @_B_printBoolean(i1 %70), !dbg !28
  store ptr addrspace(1) null, ptr %16
  %71 = call i1 @_B_lt(i64 1, i64 -1), !dbg !29
  store i1 %71, ptr %17
  %72 = load i1, ptr %17
  call void @_B_printBoolean(i1 %72), !dbg !30
  store ptr addrspace(1) null, ptr %18
  %73 = call i1 @_B_lt(i64 1, i64 -9223372036854775806), !dbg !31
  store i1 %73, ptr %19
  %74 = load i1, ptr %19
  call void @_B_printBoolean(i1 %74), !dbg !32
  store ptr addrspace(1) null, ptr %20
  %75 = call i1 @_B_lt(i64 0, i64 9223372036854775806), !dbg !33
  store i1 %75, ptr %21
  %76 = load i1, ptr %21
  call void @_B_printBoolean(i1 %76), !dbg !34
  store ptr addrspace(1) null, ptr %22
  %77 = call i1 @_B_lt(i64 0, i64 1), !dbg !35
  store i1 %77, ptr %23
  %78 = load i1, ptr %23
  call void @_B_printBoolean(i1 %78), !dbg !36
  store ptr addrspace(1) null, ptr %24
  %79 = call i1 @_B_lt(i64 0, i64 0), !dbg !37
  store i1 %79, ptr %25
  %80 = load i1, ptr %25
  call void @_B_printBoolean(i1 %80), !dbg !38
  store ptr addrspace(1) null, ptr %26
  %81 = call i1 @_B_lt(i64 0, i64 -1), !dbg !39
  store i1 %81, ptr %27
  %82 = load i1, ptr %27
  call void @_B_printBoolean(i1 %82), !dbg !40
  store ptr addrspace(1) null, ptr %28
  %83 = call i1 @_B_lt(i64 0, i64 -9223372036854775806), !dbg !41
  store i1 %83, ptr %29
  %84 = load i1, ptr %29
  call void @_B_printBoolean(i1 %84), !dbg !42
  store ptr addrspace(1) null, ptr %30
  %85 = call i1 @_B_lt(i64 -1, i64 9223372036854775806), !dbg !43
  store i1 %85, ptr %31
  %86 = load i1, ptr %31
  call void @_B_printBoolean(i1 %86), !dbg !44
  store ptr addrspace(1) null, ptr %32
  %87 = call i1 @_B_lt(i64 -1, i64 1), !dbg !45
  store i1 %87, ptr %33
  %88 = load i1, ptr %33
  call void @_B_printBoolean(i1 %88), !dbg !46
  store ptr addrspace(1) null, ptr %34
  %89 = call i1 @_B_lt(i64 -1, i64 0), !dbg !47
  store i1 %89, ptr %35
  %90 = load i1, ptr %35
  call void @_B_printBoolean(i1 %90), !dbg !48
  store ptr addrspace(1) null, ptr %36
  %91 = call i1 @_B_lt(i64 -1, i64 -1), !dbg !49
  store i1 %91, ptr %37
  %92 = load i1, ptr %37
  call void @_B_printBoolean(i1 %92), !dbg !50
  store ptr addrspace(1) null, ptr %38
  %93 = call i1 @_B_lt(i64 -1, i64 -9223372036854775806), !dbg !51
  store i1 %93, ptr %39
  %94 = load i1, ptr %39
  call void @_B_printBoolean(i1 %94), !dbg !52
  store ptr addrspace(1) null, ptr %40
  %95 = call i1 @_B_lt(i64 -9223372036854775806, i64 9223372036854775806), !dbg !53
  store i1 %95, ptr %41
  %96 = load i1, ptr %41
  call void @_B_printBoolean(i1 %96), !dbg !54
  store ptr addrspace(1) null, ptr %42
  %97 = call i1 @_B_lt(i64 -9223372036854775806, i64 1), !dbg !55
  store i1 %97, ptr %43
  %98 = load i1, ptr %43
  call void @_B_printBoolean(i1 %98), !dbg !56
  store ptr addrspace(1) null, ptr %44
  %99 = call i1 @_B_lt(i64 -9223372036854775806, i64 0), !dbg !57
  store i1 %99, ptr %45
  %100 = load i1, ptr %45
  call void @_B_printBoolean(i1 %100), !dbg !58
  store ptr addrspace(1) null, ptr %46
  %101 = call i1 @_B_lt(i64 -9223372036854775806, i64 -1), !dbg !59
  store i1 %101, ptr %47
  %102 = load i1, ptr %47
  call void @_B_printBoolean(i1 %102), !dbg !60
  store ptr addrspace(1) null, ptr %48
  %103 = call i1 @_B_lt(i64 -9223372036854775806, i64 -9223372036854775806), !dbg !61
  store i1 %103, ptr %49
  %104 = load i1, ptr %49
  call void @_B_printBoolean(i1 %104), !dbg !62
  store ptr addrspace(1) null, ptr %50
  ret void
105:
  %106 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %106), !dbg !12
  unreachable
}
define internal i1 @_B_lt(i64 %0, i64 %1) !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i1
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store i64 %0, ptr %a
  store i64 %1, ptr %b
  %8 = load i64, ptr %a
  %9 = load i64, ptr %b
  %10 = icmp slt i64 %8, %9
  store i1 %10, ptr %3
  %11 = load i1, ptr %3
  ret i1 %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 9220), !dbg !63
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !64
  unreachable
}
define internal void @_B_printBoolean(i1 %0) !dbg !9 {
  %b = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %38, label %9
9:
  store i1 %0, ptr %b
  %10 = load i1, ptr %b
  br i1 %10, label %11, label %24
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !69
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = and i64 72057594037927935, 1
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %2
  %23 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !70
  store ptr addrspace(1) null, ptr %3
  br label %37
24:
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !67
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = and i64 72057594037927935, 0
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %4
  %36 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !68
  store ptr addrspace(1) null, ptr %5
  br label %37
37:
  ret void
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 10244), !dbg !65
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !66
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/order08-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"lt", linkageName:"_B_lt", scope: !1, file: !1, line: 36, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 40, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 16, scope: !5)
!13 = !DILocation(line: 5, column: 17, scope: !5)
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 17, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 17, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 8, column: 17, scope: !5)
!20 = !DILocation(line: 8, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 17, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 11, column: 17, scope: !5)
!24 = !DILocation(line: 11, column: 4, scope: !5)
!25 = !DILocation(line: 12, column: 17, scope: !5)
!26 = !DILocation(line: 12, column: 4, scope: !5)
!27 = !DILocation(line: 13, column: 17, scope: !5)
!28 = !DILocation(line: 13, column: 4, scope: !5)
!29 = !DILocation(line: 14, column: 17, scope: !5)
!30 = !DILocation(line: 14, column: 4, scope: !5)
!31 = !DILocation(line: 15, column: 17, scope: !5)
!32 = !DILocation(line: 15, column: 4, scope: !5)
!33 = !DILocation(line: 17, column: 17, scope: !5)
!34 = !DILocation(line: 17, column: 4, scope: !5)
!35 = !DILocation(line: 18, column: 17, scope: !5)
!36 = !DILocation(line: 18, column: 4, scope: !5)
!37 = !DILocation(line: 19, column: 17, scope: !5)
!38 = !DILocation(line: 19, column: 4, scope: !5)
!39 = !DILocation(line: 20, column: 17, scope: !5)
!40 = !DILocation(line: 20, column: 4, scope: !5)
!41 = !DILocation(line: 21, column: 17, scope: !5)
!42 = !DILocation(line: 21, column: 4, scope: !5)
!43 = !DILocation(line: 23, column: 17, scope: !5)
!44 = !DILocation(line: 23, column: 4, scope: !5)
!45 = !DILocation(line: 24, column: 17, scope: !5)
!46 = !DILocation(line: 24, column: 4, scope: !5)
!47 = !DILocation(line: 25, column: 17, scope: !5)
!48 = !DILocation(line: 25, column: 4, scope: !5)
!49 = !DILocation(line: 26, column: 17, scope: !5)
!50 = !DILocation(line: 26, column: 4, scope: !5)
!51 = !DILocation(line: 27, column: 17, scope: !5)
!52 = !DILocation(line: 27, column: 4, scope: !5)
!53 = !DILocation(line: 29, column: 17, scope: !5)
!54 = !DILocation(line: 29, column: 4, scope: !5)
!55 = !DILocation(line: 30, column: 17, scope: !5)
!56 = !DILocation(line: 30, column: 4, scope: !5)
!57 = !DILocation(line: 31, column: 17, scope: !5)
!58 = !DILocation(line: 31, column: 4, scope: !5)
!59 = !DILocation(line: 32, column: 17, scope: !5)
!60 = !DILocation(line: 32, column: 4, scope: !5)
!61 = !DILocation(line: 33, column: 17, scope: !5)
!62 = !DILocation(line: 33, column: 4, scope: !5)
!63 = !DILocation(line: 0, column: 0, scope: !7)
!64 = !DILocation(line: 36, column: 9, scope: !7)
!65 = !DILocation(line: 0, column: 0, scope: !9)
!66 = !DILocation(line: 40, column: 9, scope: !9)
!67 = !DILocation(line: 45, column: 19, scope: !9)
!68 = !DILocation(line: 45, column: 8, scope: !9)
!69 = !DILocation(line: 42, column: 19, scope: !9)
!70 = !DILocation(line: 42, column: 8, scope: !9)
