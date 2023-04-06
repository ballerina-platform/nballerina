@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare zeroext i1 @_bal_exact_eq(ptr addrspace(1), ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i8
  %15 = load ptr, ptr @_bal_stack_guard
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %104, label %17
17:
  %18 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 3
  %20 = load ptr addrspace(1), ptr addrspace(1) %19, align 8
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = and i64 72057594037927935, 1
  %23 = or i64 2449958197289549824, %22
  %24 = getelementptr i8, ptr addrspace(1) null, i64 %23
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %21, i64 0, i64 0
  store ptr addrspace(1) %24, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 1
  store i64 1, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %1
  %29 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %29, ptr %x
  %30 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %30, ptr %y
  %31 = load ptr addrspace(1), ptr %x
  %32 = load ptr addrspace(1), ptr %y
  call void @_B_printEq(ptr addrspace(1) %31, ptr addrspace(1) %32), !dbg !12
  store ptr addrspace(1) null, ptr %2
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = and i64 72057594037927935, 1
  %38 = or i64 2449958197289549824, %37
  %39 = getelementptr i8, ptr addrspace(1) null, i64 %38
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %3
  %44 = load ptr addrspace(1), ptr %3
  %45 = and i64 72057594037927935, 1
  %46 = or i64 2449958197289549824, %45
  %47 = getelementptr i8, ptr addrspace(1) null, i64 %46
  call void @_B_printEq(ptr addrspace(1) %44, ptr addrspace(1) %47), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = and i64 72057594037927935, 1
  %53 = or i64 2449958197289549824, %52
  %54 = getelementptr i8, ptr addrspace(1) null, i64 %53
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %54, ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %5
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = and i64 72057594037927935, 1
  %64 = or i64 2449958197289549824, %63
  %65 = getelementptr i8, ptr addrspace(1) null, i64 %64
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %6
  %70 = load ptr addrspace(1), ptr %5
  %71 = load ptr addrspace(1), ptr %6
  call void @_B_printEq(ptr addrspace(1) %70, ptr addrspace(1) %71), !dbg !17
  store ptr addrspace(1) null, ptr %7
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !18
  %73 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %8
  %75 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !19
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %9
  %78 = load ptr addrspace(1), ptr %8
  %79 = load ptr addrspace(1), ptr %9
  call void @_B_printEq(ptr addrspace(1) %78, ptr addrspace(1) %79), !dbg !20
  store ptr addrspace(1) null, ptr %10
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = and i64 72057594037927935, 1
  %85 = or i64 2449958197289549824, %84
  %86 = getelementptr i8, ptr addrspace(1) null, i64 %85
  %87 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %86, ptr addrspace(1) %87
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %88
  %89 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %90 = getelementptr i8, ptr addrspace(1) %89, i64 864691128455135236
  store ptr addrspace(1) %90, ptr %11
  %91 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 3
  %93 = load ptr addrspace(1), ptr addrspace(1) %92, align 8
  %94 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %95 = and i64 72057594037927935, 2
  %96 = or i64 2449958197289549824, %95
  %97 = getelementptr i8, ptr addrspace(1) null, i64 %96
  %98 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %94, i64 0, i64 0
  store ptr addrspace(1) %97, ptr addrspace(1) %98
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 1
  store i64 1, ptr addrspace(1) %99
  %100 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %101 = getelementptr i8, ptr addrspace(1) %100, i64 864691128455135236
  store ptr addrspace(1) %101, ptr %12
  %102 = load ptr addrspace(1), ptr %11
  %103 = load ptr addrspace(1), ptr %12
  call void @_B_printEq(ptr addrspace(1) %102, ptr addrspace(1) %103), !dbg !23
  store ptr addrspace(1) null, ptr %13
  ret void
104:
  %105 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %105), !dbg !10
  unreachable
}
define internal void @_B_printEq(ptr addrspace(1) %0, ptr addrspace(1) %1) !dbg !7 {
  %x = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %46, label %12
12:
  store ptr addrspace(1) %0, ptr %x
  store ptr addrspace(1) %1, ptr %y
  %13 = load ptr addrspace(1), ptr %x
  %14 = load ptr addrspace(1), ptr %y
  %15 = call i1 @_bal_exact_eq(ptr addrspace(1) %13, ptr addrspace(1) %14), !dbg !26
  store i1 %15, ptr %3
  %16 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %17 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 3
  %18 = load ptr addrspace(1), ptr addrspace(1) %17, align 8
  %19 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %20 = load i1, ptr %3
  %21 = zext i1 %20 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, ptr addrspace(1) null, i64 %22
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %19, i64 0, i64 0
  store ptr addrspace(1) %23, ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %16, i64 0, i32 1
  store i64 1, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %16 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %4
  %28 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %28), !dbg !28
  store ptr addrspace(1) null, ptr %5
  %29 = load ptr addrspace(1), ptr %x
  %30 = load ptr addrspace(1), ptr %y
  %31 = call i1 @_bal_exact_eq(ptr addrspace(1) %29, ptr addrspace(1) %30), !dbg !29
  %32 = xor i1 %31, 1
  store i1 %32, ptr %6
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = load i1, ptr %6
  %38 = zext i1 %37 to i64
  %39 = or i64 %38, 72057594037927936
  %40 = getelementptr i8, ptr addrspace(1) null, i64 %39
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %7
  %45 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %45), !dbg !31
  store ptr addrspace(1) null, ptr %8
  ret void
46:
  %47 = call ptr addrspace(1) @_bal_panic_construct(i64 5892), !dbg !24
  call void @_bal_panic(ptr addrspace(1) %47), !dbg !25
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-equal/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printEq", linkageName:"_B_printEq", scope: !1, file: !1, line: 23, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 12, scope: !5)
!12 = !DILocation(line: 8, column: 4, scope: !5)
!13 = !DILocation(line: 11, column: 12, scope: !5)
!14 = !DILocation(line: 11, column: 4, scope: !5)
!15 = !DILocation(line: 14, column: 12, scope: !5)
!16 = !DILocation(line: 14, column: 17, scope: !5)
!17 = !DILocation(line: 14, column: 4, scope: !5)
!18 = !DILocation(line: 17, column: 12, scope: !5)
!19 = !DILocation(line: 17, column: 16, scope: !5)
!20 = !DILocation(line: 17, column: 4, scope: !5)
!21 = !DILocation(line: 20, column: 12, scope: !5)
!22 = !DILocation(line: 20, column: 17, scope: !5)
!23 = !DILocation(line: 20, column: 4, scope: !5)
!24 = !DILocation(line: 0, column: 0, scope: !7)
!25 = !DILocation(line: 23, column: 9, scope: !7)
!26 = !DILocation(line: 24, column: 17, scope: !7)
!27 = !DILocation(line: 24, column: 15, scope: !7)
!28 = !DILocation(line: 24, column: 4, scope: !7)
!29 = !DILocation(line: 25, column: 17, scope: !7)
!30 = !DILocation(line: 25, column: 15, scope: !7)
!31 = !DILocation(line: 25, column: 4, scope: !7)
