@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %x.1 = alloca i1
  %x.2 = alloca ptr addrspace(1)
  %y.1 = alloca i64
  %y.2 = alloca ptr addrspace(1)
  %1 = alloca double
  %2 = alloca i64
  %_ = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %57, label %8
8:
  %9 = and i64 72057594037927935, 8
  %10 = or i64 2449958197289549824, %9
  %11 = getelementptr i8, ptr addrspace(1) null, i64 %10
  store ptr addrspace(1) %11, ptr %x
  %12 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.1), !dbg !9
  store ptr addrspace(1) %12, ptr %y
  %13 = load ptr addrspace(1), ptr %x
  %14 = addrspacecast ptr addrspace(1) %13 to ptr
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 72057594037927936
  br i1 %17, label %18, label %23
18:
  %19 = load ptr addrspace(1), ptr %x
  %20 = addrspacecast ptr addrspace(1) %19 to ptr
  %21 = ptrtoint ptr %20 to i64
  %22 = trunc i64 %21 to i1
  store i1 %22, ptr %x.1
  ret void
23:
  %24 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %24, ptr %x.2
  %25 = load ptr addrspace(1), ptr %y
  %26 = addrspacecast ptr addrspace(1) %25 to ptr
  %27 = ptrtoint ptr %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 144115188075855872
  br i1 %29, label %30, label %38
30:
  %31 = load ptr addrspace(1), ptr %y
  %32 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %31), !dbg !10
  store i64 %32, ptr %y.1
  %33 = load ptr addrspace(1), ptr %x.2
  %34 = addrspacecast ptr addrspace(1) %33 to ptr
  %35 = ptrtoint ptr %34 to i64
  %36 = and i64 %35, 2233785415175766016
  %37 = icmp eq i64 %36, 216172782113783808
  br i1 %37, label %50, label %53
38:
  %39 = load ptr addrspace(1), ptr %y
  store ptr addrspace(1) %39, ptr %y.2
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load ptr addrspace(1), ptr %x.2
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %44, ptr addrspace(1) %45
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %46
  %47 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 864691128455135236
  store ptr addrspace(1) %48, ptr %3
  %49 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %49), !dbg !13
  store ptr addrspace(1) null, ptr %4
  ret void
50:
  %51 = load ptr addrspace(1), ptr %x.2
  %52 = call double @_bal_tagged_to_float(ptr addrspace(1) %51), !dbg !14
  store double %52, ptr %1
  ret void
53:
  %54 = load ptr addrspace(1), ptr %x.2
  %55 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %54), !dbg !11
  store i64 %55, ptr %2
  %56 = load i64, ptr %2
  store i64 %56, ptr %_
  br label %38
57:
  %58 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %58), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if22-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 24, scope: !5)
!10 = !DILocation(line: 9, column: 9, scope: !5)
!11 = !DILocation(line: 10, column: 13, scope: !5)
!12 = !DILocation(line: 15, column: 15, scope: !5)
!13 = !DILocation(line: 15, column: 4, scope: !5)
!14 = !DILocation(line: 16, column: 0, scope: !5)
