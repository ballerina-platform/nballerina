@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i8
  %18 = load ptr, ptr @_bal_stack_guard
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %97, label %20
20:
  %21 = call ptr addrspace(1) @_B_mkInt(i64 2), !dbg !15
  store ptr addrspace(1) %21, ptr %1
  %22 = load ptr addrspace(1), ptr %1
  %23 = and i64 72057594037927935, 2
  %24 = or i64 2449958197289549824, %23
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  %26 = icmp eq ptr addrspace(1) %22, %25
  store i1 %26, ptr %2
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load i1, ptr %2
  %32 = zext i1 %31 to i64
  %33 = or i64 %32, 72057594037927936
  %34 = getelementptr i8, ptr addrspace(1) null, i64 %33
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %3
  %39 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !17
  store ptr addrspace(1) null, ptr %4
  %40 = call ptr addrspace(1) @_B_mkInt(i64 17), !dbg !18
  store ptr addrspace(1) %40, ptr %5
  %41 = load ptr addrspace(1), ptr %5
  %42 = and i64 72057594037927935, 17
  %43 = or i64 2449958197289549824, %42
  %44 = getelementptr i8, ptr addrspace(1) null, i64 %43
  %45 = icmp ne ptr addrspace(1) %41, %44
  store i1 %45, ptr %6
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load i1, ptr %6
  %51 = zext i1 %50 to i64
  %52 = or i64 %51, 72057594037927936
  %53 = getelementptr i8, ptr addrspace(1) null, i64 %52
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %7
  %58 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !20
  store ptr addrspace(1) null, ptr %8
  %59 = call ptr addrspace(1) @_B_mkBoolean(i1 1), !dbg !21
  store ptr addrspace(1) %59, ptr %9
  %60 = load ptr addrspace(1), ptr %9
  %61 = zext i1 1 to i64
  %62 = or i64 %61, 72057594037927936
  %63 = getelementptr i8, ptr addrspace(1) null, i64 %62
  %64 = icmp eq ptr addrspace(1) %60, %63
  store i1 %64, ptr %10
  %65 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 3
  %67 = load ptr addrspace(1), ptr addrspace(1) %66, align 8
  %68 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %69 = load i1, ptr %10
  %70 = zext i1 %69 to i64
  %71 = or i64 %70, 72057594037927936
  %72 = getelementptr i8, ptr addrspace(1) null, i64 %71
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %68, i64 0, i64 0
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %65, i64 0, i32 1
  store i64 1, ptr addrspace(1) %74
  %75 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 864691128455135236
  store ptr addrspace(1) %76, ptr %11
  %77 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %77), !dbg !23
  store ptr addrspace(1) null, ptr %12
  %78 = call ptr addrspace(1) @_B_mkBoolean(i1 0), !dbg !24
  store ptr addrspace(1) %78, ptr %13
  %79 = load ptr addrspace(1), ptr %13
  %80 = zext i1 0 to i64
  %81 = or i64 %80, 72057594037927936
  %82 = getelementptr i8, ptr addrspace(1) null, i64 %81
  %83 = icmp ne ptr addrspace(1) %79, %82
  store i1 %83, ptr %14
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load i1, ptr %14
  %89 = zext i1 %88 to i64
  %90 = or i64 %89, 72057594037927936
  %91 = getelementptr i8, ptr addrspace(1) null, i64 %90
  %92 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %91, ptr addrspace(1) %92
  %93 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %93
  %94 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 864691128455135236
  store ptr addrspace(1) %95, ptr %15
  %96 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %96), !dbg !26
  store ptr addrspace(1) null, ptr %16
  ret void
97:
  %98 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %98), !dbg !14
  unreachable
}
define internal ptr addrspace(1) @_B_mkNil() !dbg !7 {
  %1 = alloca i8
  %2 = load ptr, ptr @_bal_stack_guard
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %5, label %4
4:
  ret ptr addrspace(1) null
5:
  %6 = call ptr addrspace(1) @_bal_panic_construct(i64 2820), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %6), !dbg !28
  unreachable
}
define internal ptr addrspace(1) @_B_mkInt(i64 %0) !dbg !9 {
  %n = alloca i64
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, ptr %n
  %6 = load i64, ptr %n
  %7 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %6), !dbg !31
  ret ptr addrspace(1) %7
8:
  %9 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !29
  call void @_bal_panic(ptr addrspace(1) %9), !dbg !30
  unreachable
}
define internal ptr addrspace(1) @_B_mkBoolean(i1 %0) !dbg !11 {
  %b = alloca i1
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %10, label %5
5:
  store i1 %0, ptr %b
  %6 = load i1, ptr %b
  %7 = zext i1 %6 to i64
  %8 = or i64 %7, 72057594037927936
  %9 = getelementptr i8, ptr addrspace(1) null, i64 %8
  ret ptr addrspace(1) %9
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 4868), !dbg !32
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !33
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-equal/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"mkNil", linkageName:"_B_mkNil", scope: !1, file: !1, line: 11, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"mkInt", linkageName:"_B_mkInt", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"mkBoolean", linkageName:"_B_mkBoolean", scope: !1, file: !1, line: 19, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 15, scope: !5)
!16 = !DILocation(line: 5, column: 15, scope: !5)
!17 = !DILocation(line: 5, column: 4, scope: !5)
!18 = !DILocation(line: 6, column: 22, scope: !5)
!19 = !DILocation(line: 6, column: 15, scope: !5)
!20 = !DILocation(line: 6, column: 4, scope: !5)
!21 = !DILocation(line: 7, column: 15, scope: !5)
!22 = !DILocation(line: 7, column: 15, scope: !5)
!23 = !DILocation(line: 7, column: 4, scope: !5)
!24 = !DILocation(line: 8, column: 25, scope: !5)
!25 = !DILocation(line: 8, column: 15, scope: !5)
!26 = !DILocation(line: 8, column: 4, scope: !5)
!27 = !DILocation(line: 0, column: 0, scope: !7)
!28 = !DILocation(line: 11, column: 9, scope: !7)
!29 = !DILocation(line: 0, column: 0, scope: !9)
!30 = !DILocation(line: 15, column: 9, scope: !9)
!31 = !DILocation(line: 16, column: 4, scope: !9)
!32 = !DILocation(line: 0, column: 0, scope: !11)
!33 = !DILocation(line: 19, column: 9, scope: !11)
