@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
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
  br i1 %19, label %93, label %20
20:
  %21 = call i64 @_B_foo(i64 1), !dbg !13
  store i64 %21, ptr %1
  %22 = load i64, ptr %1
  %23 = icmp sle i64 2, %22
  %24 = icmp sge i64 4, %22
  %25 = and i1 %23, %24
  store i1 %25, ptr %2
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load i1, ptr %2
  %31 = zext i1 %30 to i64
  %32 = or i64 %31, 72057594037927936
  %33 = getelementptr i8, ptr addrspace(1) null, i64 %32
  %34 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %33, ptr addrspace(1) %34
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %35
  %36 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %37 = getelementptr i8, ptr addrspace(1) %36, i64 864691128455135236
  store ptr addrspace(1) %37, ptr %3
  %38 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %38), !dbg !15
  store ptr addrspace(1) null, ptr %4
  %39 = call i64 @_B_foo(i64 4), !dbg !16
  store i64 %39, ptr %5
  %40 = load i64, ptr %5
  %41 = icmp sle i64 2, %40
  %42 = icmp sge i64 4, %40
  %43 = and i1 %41, %42
  store i1 %43, ptr %6
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 3
  %46 = load ptr addrspace(1), ptr addrspace(1) %45, align 8
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = load i1, ptr %6
  %49 = zext i1 %48 to i64
  %50 = or i64 %49, 72057594037927936
  %51 = getelementptr i8, ptr addrspace(1) null, i64 %50
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %47, i64 0, i64 0
  store ptr addrspace(1) %51, ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %7
  %56 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !18
  store ptr addrspace(1) null, ptr %8
  %57 = call i64 @_B_bar(i1 1), !dbg !19
  store i64 %57, ptr %9
  %58 = load i64, ptr %9
  %59 = icmp sle i64 2, %58
  %60 = icmp sge i64 4, %58
  %61 = and i1 %59, %60
  store i1 %61, ptr %10
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load i1, ptr %10
  %67 = zext i1 %66 to i64
  %68 = or i64 %67, 72057594037927936
  %69 = getelementptr i8, ptr addrspace(1) null, i64 %68
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %11
  %74 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %74), !dbg !21
  store ptr addrspace(1) null, ptr %12
  %75 = call i64 @_B_bar(i1 0), !dbg !22
  store i64 %75, ptr %13
  %76 = load i64, ptr %13
  %77 = icmp sle i64 2, %76
  %78 = icmp sge i64 4, %76
  %79 = and i1 %77, %78
  store i1 %79, ptr %14
  %80 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %81 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 3
  %82 = load ptr addrspace(1), ptr addrspace(1) %81, align 8
  %83 = bitcast ptr addrspace(1) %82 to ptr addrspace(1)
  %84 = load i1, ptr %14
  %85 = zext i1 %84 to i64
  %86 = or i64 %85, 72057594037927936
  %87 = getelementptr i8, ptr addrspace(1) null, i64 %86
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %83, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %80, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %15
  %92 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !24
  store ptr addrspace(1) null, ptr %16
  ret void
93:
  %94 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !11
  call void @_bal_panic(ptr addrspace(1) %94), !dbg !12
  unreachable
}
define internal i64 @_B_foo(i64 %0) !dbg !7 {
  %y = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, ptr %y
  %9 = load i64, ptr %y
  %10 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %9, i64 1)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %22, label %16
12:
  %13 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !27
  unreachable
14:
  %15 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !25
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !26
  unreachable
16:
  %17 = extractvalue {i64, i1} %10, 0
  store i64 %17, ptr %2
  %18 = load i64, ptr %2
  %19 = icmp sle i64 -2147483648, %18
  %20 = icmp sge i64 2147483647, %18
  %21 = and i1 %19, %20
  br i1 %21, label %24, label %26
22:
  %23 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !25
  store ptr addrspace(1) %23, ptr %4
  br label %12
24:
  store i64 %18, ptr %3
  %25 = load i64, ptr %3
  ret i64 %25
26:
  %27 = call ptr addrspace(1) @_bal_panic_construct(i64 3587), !dbg !25
  store ptr addrspace(1) %27, ptr %4
  br label %12
}
define internal i64 @_B_bar(i1 %0) !dbg !9 {
  %z = alloca i1
  %2 = alloca i8
  %3 = load ptr, ptr @_bal_stack_guard
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %9, label %5
5:
  store i1 %0, ptr %z
  %6 = load i1, ptr %z
  br i1 %6, label %7, label %8
7:
  ret i64 2
8:
  ret i64 1
9:
  %10 = call ptr addrspace(1) @_bal_panic_construct(i64 4356), !dbg !28
  call void @_bal_panic(ptr addrspace(1) %10), !dbg !29
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-inttest/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bar", linkageName:"_B_bar", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = !DILocation(line: 0, column: 0, scope: !5)
!12 = !DILocation(line: 6, column: 16, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 15, scope: !5)
!18 = !DILocation(line: 8, column: 4, scope: !5)
!19 = !DILocation(line: 9, column: 15, scope: !5)
!20 = !DILocation(line: 9, column: 15, scope: !5)
!21 = !DILocation(line: 9, column: 4, scope: !5)
!22 = !DILocation(line: 10, column: 15, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 4, scope: !5)
!25 = !DILocation(line: 0, column: 0, scope: !7)
!26 = !DILocation(line: 13, column: 9, scope: !7)
!27 = !DILocation(line: 15, column: 0, scope: !7)
!28 = !DILocation(line: 0, column: 0, scope: !9)
!29 = !DILocation(line: 17, column: 9, scope: !9)
