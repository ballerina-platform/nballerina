@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %a = alloca ptr addrspace(1)
  %a.1 = alloca i64
  %a.2 = alloca double
  %c = alloca i64
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %49, label %9
9:
  %10 = and i64 72057594037927935, 5
  %11 = or i64 2449958197289549824, %10
  %12 = getelementptr i8, ptr addrspace(1) null, i64 %11
  store ptr addrspace(1) %12, ptr %a
  %13 = load ptr addrspace(1), ptr %a
  %14 = addrspacecast ptr addrspace(1) %13 to ptr
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 144115188075855872
  br i1 %17, label %18, label %24
18:
  %19 = load ptr addrspace(1), ptr %a
  %20 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %19), !dbg !9
  store i64 %20, ptr %a.1
  %21 = and i64 72057594037927935, 8
  %22 = or i64 2449958197289549824, %21
  %23 = getelementptr i8, ptr addrspace(1) null, i64 %22
  store ptr addrspace(1) %23, ptr %a
  store i64 12, ptr %c
  br label %27
24:
  %25 = load ptr addrspace(1), ptr %a
  %26 = call double @_bal_tagged_to_float(ptr addrspace(1) %25), !dbg !13
  store double %26, ptr %a.2
  ret void
27:
  %28 = load i64, ptr %c
  %29 = icmp sgt i64 %28, 10
  store i1 %29, ptr %1
  %30 = load i1, ptr %1
  br i1 %30, label %31, label %35
31:
  %32 = load i64, ptr %c
  %33 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %32, i64 1)
  %34 = extractvalue {i64, i1} %33, 1
  br i1 %34, label %54, label %51
35:
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load i64, ptr %c
  %41 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %40), !dbg !11
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %3
  %46 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !12
  store ptr addrspace(1) null, ptr %4
  br label %24
47:
  %48 = load ptr addrspace(1), ptr %5
  call void @_bal_panic(ptr addrspace(1) %48), !dbg !14
  unreachable
49:
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %50), !dbg !8
  unreachable
51:
  %52 = extractvalue {i64, i1} %33, 0
  store i64 %52, ptr %2
  %53 = load i64, ptr %2
  store i64 %53, ptr %c
  br label %27
54:
  %55 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !7
  store ptr addrspace(1) %55, ptr %5
  br label %47
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/loopassign-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 9, scope: !5)
!10 = !DILocation(line: 10, column: 19, scope: !5)
!11 = !DILocation(line: 10, column: 19, scope: !5)
!12 = !DILocation(line: 10, column: 8, scope: !5)
!13 = !DILocation(line: 4, column: 7, scope: !5)
!14 = !DILocation(line: 12, column: 0, scope: !5)
