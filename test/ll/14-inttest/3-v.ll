@_bal_stack_guard = external global ptr
@_Bt04root0 = external constant {i32, i32, [0 x ptr]}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i1 @_bal_type_contains_int(ptr, i64) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i64
  %10 = alloca i1
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i64
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i8
  %18 = load ptr, ptr @_bal_stack_guard
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %85, label %20
20:
  %21 = call i64 @_B_foo(i64 1), !dbg !11
  store i64 %21, ptr %1
  %22 = load i64, ptr %1
  %23 = call i1 @_bal_type_contains_int(ptr @_Bt04root0, i64 %22), !dbg !12
  store i1 %23, ptr %2
  %24 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
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
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %37 = call i64 @_B_foo(i64 6), !dbg !15
  store i64 %37, ptr %5
  %38 = load i64, ptr %5
  %39 = call i1 @_bal_type_contains_int(ptr @_Bt04root0, i64 %38), !dbg !16
  store i1 %39, ptr %6
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load i1, ptr %6
  %45 = zext i1 %44 to i64
  %46 = or i64 %45, 72057594037927936
  %47 = getelementptr i8, ptr addrspace(1) null, i64 %46
  %48 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %47, ptr addrspace(1) %48
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %49
  %50 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 864691128455135236
  store ptr addrspace(1) %51, ptr %7
  %52 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %52), !dbg !18
  store ptr addrspace(1) null, ptr %8
  %53 = call i64 @_B_foo(i64 5), !dbg !19
  store i64 %53, ptr %9
  %54 = load i64, ptr %9
  %55 = call i1 @_bal_type_contains_int(ptr @_Bt04root0, i64 %54), !dbg !20
  store i1 %55, ptr %10
  %56 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 3
  %58 = load ptr addrspace(1), ptr addrspace(1) %57, align 8
  %59 = bitcast ptr addrspace(1) %58 to ptr addrspace(1)
  %60 = load i1, ptr %10
  %61 = zext i1 %60 to i64
  %62 = or i64 %61, 72057594037927936
  %63 = getelementptr i8, ptr addrspace(1) null, i64 %62
  %64 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %59, i64 0, i64 0
  store ptr addrspace(1) %63, ptr addrspace(1) %64
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %56, i64 0, i32 1
  store i64 1, ptr addrspace(1) %65
  %66 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %67 = getelementptr i8, ptr addrspace(1) %66, i64 864691128455135236
  store ptr addrspace(1) %67, ptr %11
  %68 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %68), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %69 = call i64 @_B_foo(i64 7), !dbg !23
  store i64 %69, ptr %13
  %70 = load i64, ptr %13
  %71 = call i1 @_bal_type_contains_int(ptr @_Bt04root0, i64 %70), !dbg !24
  store i1 %71, ptr %14
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = load i1, ptr %14
  %77 = zext i1 %76 to i64
  %78 = or i64 %77, 72057594037927936
  %79 = getelementptr i8, ptr addrspace(1) null, i64 %78
  %80 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %79, ptr addrspace(1) %80
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %81
  %82 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %83 = getelementptr i8, ptr addrspace(1) %82, i64 864691128455135236
  store ptr addrspace(1) %83, ptr %15
  %84 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %84), !dbg !26
  store ptr addrspace(1) null, ptr %16
  ret void
85:
  %86 = call ptr addrspace(1) @_bal_panic_construct(i64 1284), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %86), !dbg !10
  unreachable
}
define internal i64 @_B_foo(i64 %0) !dbg !7 {
  %y = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca i8
  %5 = load ptr, ptr @_bal_stack_guard
  %6 = icmp ult ptr %4, %5
  br i1 %6, label %13, label %7
7:
  store i64 %0, ptr %y
  %8 = load i64, ptr %y
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %8, i64 1)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %18, label %15
11:
  %12 = load ptr addrspace(1), ptr %3
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !29
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !27
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !28
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %2
  %17 = load i64, ptr %2
  ret i64 %17
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 3329), !dbg !27
  store ptr addrspace(1) %19, ptr %3
  br label %11
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-inttest/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 16, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 22, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 22, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
!19 = !DILocation(line: 8, column: 15, scope: !5)
!20 = !DILocation(line: 8, column: 22, scope: !5)
!21 = !DILocation(line: 8, column: 15, scope: !5)
!22 = !DILocation(line: 8, column: 4, scope: !5)
!23 = !DILocation(line: 9, column: 15, scope: !5)
!24 = !DILocation(line: 9, column: 22, scope: !5)
!25 = !DILocation(line: 9, column: 15, scope: !5)
!26 = !DILocation(line: 9, column: 4, scope: !5)
!27 = !DILocation(line: 0, column: 0, scope: !7)
!28 = !DILocation(line: 12, column: 9, scope: !7)
!29 = !DILocation(line: 14, column: 0, scope: !7)
