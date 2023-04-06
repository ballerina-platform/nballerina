@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define internal i1 @_B_checkEquality(i1 %0, i1 %1) !dbg !5 {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store i1 %0, ptr %b1
  store i1 %1, ptr %b2
  %8 = load i1, ptr %b1
  %9 = load i1, ptr %b2
  %10 = icmp eq i1 %8, %9
  store i1 %10, ptr %3
  %11 = load i1, ptr %3
  ret i1 %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !12
  unreachable
}
define internal i1 @_B_checkInEquality(i1 %0, i1 %1) !dbg !7 {
  %b1 = alloca i1
  %b2 = alloca i1
  %3 = alloca i1
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %12, label %7
7:
  store i1 %0, ptr %b1
  store i1 %1, ptr %b2
  %8 = load i1, ptr %b1
  %9 = load i1, ptr %b2
  %10 = icmp ne i1 %8, %9
  store i1 %10, ptr %3
  %11 = load i1, ptr %3
  ret i1 %11
12:
  %13 = call ptr addrspace(1) @_bal_panic_construct(i64 2052), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !14
  unreachable
}
define void @_B04rootmain() !dbg !9 {
  %b = alloca i1
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i8
  %17 = load ptr, ptr @_bal_stack_guard
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %110, label %19
19:
  %20 = call i1 @_B_checkEquality(i1 1, i1 1), !dbg !17
  store i1 %20, ptr %1
  %21 = load i1, ptr %1
  store i1 %21, ptr %b
  %22 = load i1, ptr %b
  br i1 %22, label %23, label %36
23:
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = and i64 72057594037927935, 4
  %29 = or i64 2449958197289549824, %28
  %30 = getelementptr i8, ptr addrspace(1) null, i64 %29
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %2
  %35 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !21
  store ptr addrspace(1) null, ptr %3
  br label %49
36:
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = and i64 72057594037927935, 5
  %42 = or i64 2449958197289549824, %41
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %40, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %4
  %48 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !19
  store ptr addrspace(1) null, ptr %5
  br label %49
49:
  %50 = call i1 @_B_checkEquality(i1 0, i1 0), !dbg !22
  store i1 %50, ptr %6
  %51 = load i1, ptr %6
  store i1 %51, ptr %b
  %52 = load i1, ptr %b
  br i1 %52, label %53, label %66
53:
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = and i64 72057594037927935, 6
  %59 = or i64 2449958197289549824, %58
  %60 = getelementptr i8, ptr addrspace(1) null, i64 %59
  %61 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) %60, ptr addrspace(1) %61
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %62
  %63 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %64 = getelementptr i8, ptr addrspace(1) %63, i64 864691128455135236
  store ptr addrspace(1) %64, ptr %7
  %65 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %65), !dbg !26
  store ptr addrspace(1) null, ptr %8
  br label %79
66:
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = and i64 72057594037927935, 7
  %72 = or i64 2449958197289549824, %71
  %73 = getelementptr i8, ptr addrspace(1) null, i64 %72
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %73, ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %9
  %78 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %78), !dbg !24
  store ptr addrspace(1) null, ptr %10
  br label %79
79:
  %80 = call i1 @_B_checkInEquality(i1 1, i1 1), !dbg !27
  store i1 %80, ptr %11
  %81 = load i1, ptr %11
  store i1 %81, ptr %b
  %82 = load i1, ptr %b
  br i1 %82, label %83, label %96
83:
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = and i64 72057594037927935, 8
  %89 = or i64 2449958197289549824, %88
  %90 = getelementptr i8, ptr addrspace(1) null, i64 %89
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %12
  %95 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %95), !dbg !31
  store ptr addrspace(1) null, ptr %13
  br label %109
96:
  %97 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !28
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 3
  %99 = load ptr addrspace(1), ptr addrspace(1) %98, align 8
  %100 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %101 = and i64 72057594037927935, 9
  %102 = or i64 2449958197289549824, %101
  %103 = getelementptr i8, ptr addrspace(1) null, i64 %102
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %100, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %14
  %108 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !29
  store ptr addrspace(1) null, ptr %15
  br label %109
109:
  ret void
110:
  %111 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %111), !dbg !16
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-boolean/equal-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"checkEquality", linkageName:"_B_checkEquality", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"checkInEquality", linkageName:"_B_checkInEquality", scope: !1, file: !1, line: 8, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 4, column: 9, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 8, column: 9, scope: !7)
!15 = !DILocation(line: 0, column: 0, scope: !9)
!16 = !DILocation(line: 12, column: 16, scope: !9)
!17 = !DILocation(line: 13, column: 16, scope: !9)
!18 = !DILocation(line: 18, column: 19, scope: !9)
!19 = !DILocation(line: 18, column: 8, scope: !9)
!20 = !DILocation(line: 15, column: 19, scope: !9)
!21 = !DILocation(line: 15, column: 8, scope: !9)
!22 = !DILocation(line: 20, column: 8, scope: !9)
!23 = !DILocation(line: 25, column: 19, scope: !9)
!24 = !DILocation(line: 25, column: 8, scope: !9)
!25 = !DILocation(line: 22, column: 19, scope: !9)
!26 = !DILocation(line: 22, column: 8, scope: !9)
!27 = !DILocation(line: 27, column: 8, scope: !9)
!28 = !DILocation(line: 32, column: 19, scope: !9)
!29 = !DILocation(line: 32, column: 8, scope: !9)
!30 = !DILocation(line: 29, column: 19, scope: !9)
!31 = !DILocation(line: 29, column: 8, scope: !9)
