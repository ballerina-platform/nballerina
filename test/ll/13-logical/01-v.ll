@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i8
  %16 = load ptr, ptr @_bal_stack_guard
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %79, label %18
18:
  %19 = call i1 @_B04rootf(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), i1 1), !dbg !11
  store i1 %19, ptr %1
  %20 = load i1, ptr %1
  br i1 %20, label %21, label %22
21:
  store i1 1, ptr %2
  br label %23
22:
  store i1 0, ptr %2
  br label %23
23:
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 3
  %26 = load ptr addrspace(1), ptr addrspace(1) %25, align 8
  %27 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %28 = load i1, ptr %2
  %29 = zext i1 %28 to i64
  %30 = or i64 %29, 72057594037927936
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %27, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %24, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %3
  %36 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !13
  store ptr addrspace(1) null, ptr %4
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = zext i1 0 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %40, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %6
  %48 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !15
  store ptr addrspace(1) null, ptr %7
  %49 = call i1 @_B04rootf(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261411), i1 0), !dbg !16
  store i1 %49, ptr %8
  %50 = load i1, ptr %8
  br i1 %50, label %51, label %52
51:
  store i1 1, ptr %9
  br label %53
52:
  store i1 0, ptr %9
  br label %53
53:
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = load i1, ptr %9
  %59 = zext i1 %58 to i64
  %60 = or i64 %59, 72057594037927936
  %61 = getelementptr i8, ptr addrspace(1) null, i64 %60
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %63
  %64 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %10
  %66 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %66), !dbg !18
  store ptr addrspace(1) null, ptr %11
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = zext i1 1 to i64
  %72 = or i64 %71, 72057594037927936
  %73 = getelementptr i8, ptr addrspace(1) null, i64 %72
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %73, ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %13
  %78 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %78), !dbg !20
  store ptr addrspace(1) null, ptr %14
  ret void
79:
  %80 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %80), !dbg !10
  unreachable
}
define i1 @_B04rootf(ptr addrspace(1) %0, i1 %1) !dbg !7 {
  %s = alloca ptr addrspace(1)
  %b = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %20, label %8
8:
  store ptr addrspace(1) %0, ptr %s
  store i1 %1, ptr %b
  %9 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %10 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 3
  %11 = load ptr addrspace(1), ptr addrspace(1) %10, align 8
  %12 = bitcast ptr addrspace(1) %11 to ptr addrspace(1)
  %13 = load ptr addrspace(1), ptr %s
  %14 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %12, i64 0, i64 0
  store ptr addrspace(1) %13, ptr addrspace(1) %14
  %15 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %9, i64 0, i32 1
  store i64 1, ptr addrspace(1) %15
  %16 = bitcast ptr addrspace(1) %9 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %3
  %18 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %18), !dbg !24
  store ptr addrspace(1) null, ptr %4
  %19 = load i1, ptr %b
  ret i1 %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 3588), !dbg !21
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !22
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/01-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"f", linkageName:"_B04rootf", scope: !1, file: !1, line: 14, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 2, column: 16, scope: !5)
!11 = !DILocation(line: 3, column: 23, scope: !5)
!12 = !DILocation(line: 3, column: 15, scope: !5)
!13 = !DILocation(line: 3, column: 4, scope: !5)
!14 = !DILocation(line: 6, column: 15, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 24, scope: !5)
!17 = !DILocation(line: 8, column: 15, scope: !5)
!18 = !DILocation(line: 8, column: 4, scope: !5)
!19 = !DILocation(line: 11, column: 15, scope: !5)
!20 = !DILocation(line: 11, column: 4, scope: !5)
!21 = !DILocation(line: 0, column: 0, scope: !7)
!22 = !DILocation(line: 14, column: 16, scope: !7)
!23 = !DILocation(line: 15, column: 15, scope: !7)
!24 = !DILocation(line: 15, column: 4, scope: !7)
