@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"test str\00\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
define internal ptr addrspace(1) @_B_foo(ptr addrspace(1) %0, i64 %1) !dbg !5 {
  %arr = alloca ptr addrspace(1)
  %i = alloca i64
  %3 = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %14, label %8
8:
  store ptr addrspace(1) %0, ptr %arr
  store i64 %1, ptr %i
  %9 = load i64, ptr %i
  %10 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %9, i64 10)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %25, label %16
12:
  %13 = load ptr addrspace(1), ptr %4
  call void @_bal_panic(ptr addrspace(1) %13), !dbg !12
  unreachable
14:
  %15 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %15), !dbg !10
  unreachable
16:
  %17 = extractvalue {i64, i1} %10, 0
  store i64 %17, ptr %3
  %18 = load ptr addrspace(1), ptr %arr
  %19 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %18, i64 72057594037927928), !dbg !11
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = load i64, ptr %i
  %22 = load i64, ptr %3
  %23 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %18, i64 4)
  %24 = icmp ne ptr addrspace(1) %23, null
  br i1 %24, label %27, label %31
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !9
  store ptr addrspace(1) %26, ptr %4
  br label %12
27:
  %28 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  %29 = load i64, ptr addrspace(1) %28, align 8
  %30 = icmp ult i64 %21, %29
  br i1 %30, label %40, label %31
31:
  %32 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 0
  %33 = load ptr, ptr addrspace(1) %32, align 8
  %34 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8
  %36 = call i64 %35(ptr addrspace(1) %18, i64 %21, i64 %22)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %45, label %46
38:
  %39 = load ptr addrspace(1), ptr %arr
  ret ptr addrspace(1) %39
40:
  %41 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = getelementptr inbounds [0 x i64], ptr addrspace(1) %43, i64 0, i64 %21
  store i64 %22, ptr addrspace(1) %44
  br label %38
45:
  br label %38
46:
  %47 = or i64 %36, 1280
  %48 = call ptr addrspace(1) @_bal_panic_construct(i64 %47), !dbg !9
  store ptr addrspace(1) %48, ptr %4
  br label %12
}
define void @_B04rootmain() !dbg !7 {
  %arr = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %_ = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %_.1 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %_.2 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %str = alloca ptr addrspace(1)
  %_.3 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %51, label %12
12:
  %13 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !15
  %14 = bitcast ptr addrspace(1) %13 to ptr addrspace(1)
  %15 = getelementptr i8, ptr addrspace(1) %14, i64 864691128455135236
  store ptr addrspace(1) %15, ptr %1
  %16 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %16, ptr %arr
  %17 = load ptr addrspace(1), ptr %arr
  %18 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %17, i64 0), !dbg !16
  store ptr addrspace(1) %18, ptr %2
  %19 = load ptr addrspace(1), ptr %2
  %20 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %19), !dbg !17
  store ptr addrspace(1) %20, ptr %_
  %21 = load ptr addrspace(1), ptr %arr
  %22 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %21, i64 1), !dbg !18
  store ptr addrspace(1) %22, ptr %3
  %23 = load ptr addrspace(1), ptr %3
  %24 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %23), !dbg !19
  store ptr addrspace(1) %24, ptr %_.1
  %25 = load ptr addrspace(1), ptr %arr
  %26 = call ptr addrspace(1) @_B_foo(ptr addrspace(1) %25, i64 2), !dbg !20
  store ptr addrspace(1) %26, ptr %4
  %27 = load ptr addrspace(1), ptr %4
  %28 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %27), !dbg !21
  store ptr addrspace(1) %28, ptr %_.2
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !22
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = load ptr addrspace(1), ptr %arr
  %34 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %33), !dbg !23
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) %34, ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %5
  %39 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !24
  store ptr addrspace(1) null, ptr %6
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr %str
  %40 = load ptr addrspace(1), ptr %str
  store ptr addrspace(1) %40, ptr %_.3
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !25
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load ptr addrspace(1), ptr %str
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %7
  %50 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !26
  store ptr addrspace(1) null, ptr %8
  ret void
51:
  %52 = call ptr addrspace(1) @_bal_panic_construct(i64 2308), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %52), !dbg !14
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/assign8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 9, scope: !5)
!11 = !DILocation(line: 5, column: 7, scope: !5)
!12 = !DILocation(line: 7, column: 0, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 9, column: 16, scope: !7)
!15 = !DILocation(line: 10, column: 16, scope: !7)
!16 = !DILocation(line: 11, column: 8, scope: !7)
!17 = !DILocation(line: 11, column: 6, scope: !7)
!18 = !DILocation(line: 12, column: 8, scope: !7)
!19 = !DILocation(line: 12, column: 6, scope: !7)
!20 = !DILocation(line: 13, column: 8, scope: !7)
!21 = !DILocation(line: 13, column: 6, scope: !7)
!22 = !DILocation(line: 14, column: 15, scope: !7)
!23 = !DILocation(line: 14, column: 15, scope: !7)
!24 = !DILocation(line: 14, column: 4, scope: !7)
!25 = !DILocation(line: 18, column: 15, scope: !7)
!26 = !DILocation(line: 18, column: 4, scope: !7)
