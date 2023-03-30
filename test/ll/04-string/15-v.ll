@_bal_stack_guard = external global ptr
@.str6 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 6, [12 x i8] c"smile\F0\9F\99\82\00\00\00"}, align 8
@.str8 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 6, [12 x i8] c"\F0\9F\99\82frown\00\00\00"}, align 8
@.str10 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 2, [12 x i8] c"\F0\9F\99\81\F0\9F\99\82\00\00\00\00"}, align 8
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_string_concat(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_Bb0m4lang6stringlength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_string_eq(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %10, label %9
9:
  call void @_B_concatTest(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567)), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_concatTest(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261409), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441221217)), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_concatTest(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187909540179315), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571337400304), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str6 to ptr) to ptr addrspace(1)), i64 360287970189639680)), !dbg !13
  store ptr addrspace(1) null, ptr %3
  call void @_B_concatTest(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571337400304), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187948379828838), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str8 to ptr) to ptr addrspace(1)), i64 360287970189639680)), !dbg !14
  store ptr addrspace(1) null, ptr %4
  call void @_B_concatTest(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571320623088), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571337400304), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str10 to ptr) to ptr addrspace(1)), i64 360287970189639680)), !dbg !15
  store ptr addrspace(1) null, ptr %5
  ret void
10:
  %11 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %11), !dbg !10
  unreachable
}
define internal void @_B_concatTest(ptr addrspace(1) %0, ptr addrspace(1) %1, ptr addrspace(1) %2) !dbg !7 {
  %s1 = alloca ptr addrspace(1)
  %s2 = alloca ptr addrspace(1)
  %expected = alloca ptr addrspace(1)
  %s = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %60, label %16
16:
  store ptr addrspace(1) %0, ptr %s1
  store ptr addrspace(1) %1, ptr %s2
  store ptr addrspace(1) %2, ptr %expected
  %17 = load ptr addrspace(1), ptr %s1
  %18 = load ptr addrspace(1), ptr %s2
  %19 = call ptr addrspace(1) @_bal_string_concat(ptr addrspace(1) %17, ptr addrspace(1) %18), !dbg !18
  store ptr addrspace(1) %19, ptr %4
  %20 = load ptr addrspace(1), ptr %4
  store ptr addrspace(1) %20, ptr %s
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load ptr addrspace(1), ptr %s
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %5
  %30 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !20
  store ptr addrspace(1) null, ptr %6
  %31 = load ptr addrspace(1), ptr %s
  %32 = call i64 @_Bb0m4lang6stringlength(ptr addrspace(1) %31), !dbg !21
  store i64 %32, ptr %7
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = load i64, ptr %7
  %38 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %37), !dbg !23
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %8
  %43 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !24
  store ptr addrspace(1) null, ptr %9
  %44 = load ptr addrspace(1), ptr %s
  %45 = load ptr addrspace(1), ptr %expected
  %46 = call i1 @_bal_string_eq(ptr addrspace(1) %44, ptr addrspace(1) %45), !dbg !25
  store i1 %46, ptr %10
  %47 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !26
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %49 = load ptr addrspace(1), ptr addrspace(1) %48, align 8
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = load i1, ptr %10
  %52 = zext i1 %51 to i64
  %53 = or i64 %52, 72057594037927936
  %54 = getelementptr i8, ptr addrspace(1) null, i64 %53
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 0
  store ptr addrspace(1) %54, ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %11
  %59 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %59), !dbg !27
  store ptr addrspace(1) null, ptr %12
  ret void
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 6404), !dbg !16
  call void @_bal_panic(ptr addrspace(1) %61), !dbg !17
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-string/15-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"concatTest", linkageName:"_B_concatTest", scope: !1, file: !1, line: 25, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 3, column: 16, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 4, scope: !5)
!13 = !DILocation(line: 12, column: 4, scope: !5)
!14 = !DILocation(line: 16, column: 4, scope: !5)
!15 = !DILocation(line: 20, column: 4, scope: !5)
!16 = !DILocation(line: 0, column: 0, scope: !7)
!17 = !DILocation(line: 25, column: 9, scope: !7)
!18 = !DILocation(line: 26, column: 18, scope: !7)
!19 = !DILocation(line: 27, column: 15, scope: !7)
!20 = !DILocation(line: 27, column: 4, scope: !7)
!21 = !DILocation(line: 28, column: 17, scope: !7)
!22 = !DILocation(line: 28, column: 15, scope: !7)
!23 = !DILocation(line: 28, column: 15, scope: !7)
!24 = !DILocation(line: 28, column: 4, scope: !7)
!25 = !DILocation(line: 29, column: 17, scope: !7)
!26 = !DILocation(line: 29, column: 15, scope: !7)
!27 = !DILocation(line: 29, column: 4, scope: !7)
